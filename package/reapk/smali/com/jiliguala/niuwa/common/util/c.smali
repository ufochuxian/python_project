.class public Lcom/jiliguala/niuwa/common/util/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/common/util/c$b;,
        Lcom/jiliguala/niuwa/common/util/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static e:I


# instance fields
.field private f:Landroid/content/Context;

.field private g:Landroid/net/Uri;

.field private h:I

.field private i:Lcom/jiliguala/niuwa/common/util/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 23
    const-class v0, Lcom/jiliguala/niuwa/common/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/c;->a:Ljava/lang/String;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "datetaken"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/jiliguala/niuwa/common/util/c;->b:[Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/jiliguala/niuwa/common/util/c;->d:J

    .line 33
    sput v3, Lcom/jiliguala/niuwa/common/util/c;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/util/c$b;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/jiliguala/niuwa/common/util/c$b;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/c;->f:Landroid/content/Context;

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BitmapSaveTask need config!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->i(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/c;->c:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    .line 54
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 20
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 74
    .local v10, "dateTaken":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v16, v4, v6

    .line 75
    .local v16, "now":J
    const-wide/16 v12, 0x0

    .line 76
    .local v12, "latitude":D
    const-wide/16 v14, 0x0

    .line 78
    .local v14, "longitude":D
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 80
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 81
    const/4 v8, 0x0

    .line 83
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Lcom/jiliguala/niuwa/common/util/c;->b:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 84
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "datetaken"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 86
    const-string v3, "latitude"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    .line 87
    const-string v3, "longitude"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getDouble(I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 92
    :cond_0
    if-eqz v8, :cond_1

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 103
    .local v19, "values":Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v3, "_display_name"

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v3, "mime_type"

    const-string v4, "image/jpeg"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "datetaken"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v3, "date_modified"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v3, "date_added"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_2

    .line 112
    const-string v3, "orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    :cond_2
    const-string v3, "_data"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v3, "_size"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-wide/16 v4, 0x0

    cmpl-double v3, v12, v4

    if-nez v3, :cond_3

    const-wide/16 v4, 0x0

    cmpl-double v3, v14, v4

    if-eqz v3, :cond_4

    .line 124
    :cond_3
    const-string v3, "latitude"

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 125
    const-string v3, "longitude"

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 130
    :cond_4
    :try_start_1
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 132
    .local v18, "uri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.hardware.action.NEW_PICTURE"

    move-object/from16 v0, v18

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    return-object v18

    .line 89
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "values":Landroid/content/ContentValues;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v3

    .line 92
    if-eqz v8, :cond_1

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 92
    :catchall_0
    move-exception v3

    if-eqz v8, :cond_5

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_5
    throw v3

    .line 137
    .end local v8    # "cursor":Landroid/database/Cursor;
    .restart local v19    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 139
    .local v9, "ex":Ljava/lang/Exception;
    throw v9
.end method

.method public static declared-synchronized a(J)Ljava/lang/String;
    .locals 12
    .param p0, "dateTaken"    # J

    .prologue
    .line 145
    const-class v4, Lcom/jiliguala/niuwa/common/util/c;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MMdd_HHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "mFormat":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 147
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "result":Ljava/lang/String;
    const-wide/16 v6, 0x3e8

    div-long v6, p0, v6

    sget-wide v8, Lcom/jiliguala/niuwa/common/util/c;->d:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 152
    sget v3, Lcom/jiliguala/niuwa/common/util/c;->e:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/jiliguala/niuwa/common/util/c;->e:I

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/jiliguala/niuwa/common/util/c;->e:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 159
    :goto_0
    monitor-exit v4

    return-object v2

    .line 155
    :cond_0
    :try_start_1
    sput-wide p0, Lcom/jiliguala/niuwa/common/util/c;->d:J

    .line 156
    const/4 v3, 0x0

    sput v3, Lcom/jiliguala/niuwa/common/util/c;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "mFormat":Ljava/text/SimpleDateFormat;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2f

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/common/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/common/util/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 172
    const/4 v0, 0x0

    aget-object v7, p1, v0

    .line 173
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 174
    const/4 v13, 0x0

    .line 240
    :cond_0
    :goto_0
    return-object v13

    .line 176
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 179
    .local v8, "curTime":J
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    invoke-static {v8, v9}, Lcom/jiliguala/niuwa/common/util/c;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jiliguala/niuwa/common/util/c$b;->d:Ljava/lang/String;

    .line 183
    :cond_2
    const/4 v13, 0x0

    .line 184
    .local v13, "path":Ljava/lang/String;
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->b:Landroid/net/Uri;

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 186
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "filename":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 188
    .local v10, "dotIndex":I
    if-lez v10, :cond_3

    .line 189
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iput-object v12, v0, Lcom/jiliguala/niuwa/common/util/c$b;->d:Ljava/lang/String;

    .line 201
    .end local v10    # "dotIndex":I
    .end local v12    # "filename":Ljava/lang/String;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->h:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1f4

    :goto_2
    invoke-static {v7, v13, v0}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Landroid/graphics/Bitmap;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/common/util/c;->h:I

    .line 203
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 204
    .local v5, "width":I
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 206
    .local v6, "height":I
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->g:Z

    if-eqz v0, :cond_5

    .line 207
    invoke-static {v7}, Lcom/jiliguala/niuwa/common/util/BitmapUtils;->a(Landroid/graphics/Bitmap;)Z

    .line 211
    :cond_5
    iget v0, p0, Lcom/jiliguala/niuwa/common/util/c;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 212
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "file":Ljava/io/File;
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-boolean v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->f:Z

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/c$b;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v3, v3, Lcom/jiliguala/niuwa/common/util/c$b;->d:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-static/range {v0 .. v6}, Lcom/jiliguala/niuwa/common/util/c;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;III)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->g:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->g:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->b:Landroid/net/Uri;

    iput-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->g:Landroid/net/Uri;

    goto/16 :goto_0

    .line 194
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_7
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 195
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v1, v1, Lcom/jiliguala/niuwa/common/util/c$b;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 201
    :cond_8
    const/4 v0, -0x1

    goto :goto_2

    .line 231
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    :catch_0
    move-exception v11

    .line 232
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    const/4 v0, 0x2

    iput v0, p0, Lcom/jiliguala/niuwa/common/util/c;->h:I

    goto :goto_3

    .line 240
    .end local v2    # "file":Ljava/io/File;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->e:Lcom/jiliguala/niuwa/common/util/c$a;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->e:Lcom/jiliguala/niuwa/common/util/c$a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/common/util/c;->g:Landroid/net/Uri;

    iget v2, p0, Lcom/jiliguala/niuwa/common/util/c;->h:I

    invoke-interface {v0, p1, v1, v2}, Lcom/jiliguala/niuwa/common/util/c$a;->onPostExecute(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 250
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/c;->a([Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/jiliguala/niuwa/common/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->e:Lcom/jiliguala/niuwa/common/util/c$a;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/c;->i:Lcom/jiliguala/niuwa/common/util/c$b;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/util/c$b;->e:Lcom/jiliguala/niuwa/common/util/c$a;

    invoke-interface {v0}, Lcom/jiliguala/niuwa/common/util/c$a;->onPreExecute()V

    .line 168
    :cond_0
    return-void
.end method
