.class public Lcom/jiliguala/niuwa/common/util/xutils/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/jiliguala/niuwa/common/util/xutils/util/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)J
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 88
    const-wide/16 v2, 0x0

    .line 90
    .local v2, "size":J
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 91
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 93
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1

    .line 99
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :catch_0
    move-exception v4

    .line 102
    :cond_1
    return-wide v2
.end method

.method public static a(D)Ljava/lang/String;
    .locals 18
    .param p0, "size"    # D

    .prologue
    .line 144
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v4, p0, v14

    .line 145
    .local v4, "kiloByte":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v4, v14

    if-gez v14, :cond_0

    .line 146
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "Byte"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 170
    :goto_0
    return-object v14

    .line 149
    :cond_0
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v6, v4, v14

    .line 150
    .local v6, "megaByte":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v6, v14

    if-gez v14, :cond_1

    .line 151
    new-instance v8, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 152
    .local v8, "result1":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 153
    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "KB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 156
    .end local v8    # "result1":Ljava/math/BigDecimal;
    :cond_1
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v2, v6, v14

    .line 157
    .local v2, "gigaByte":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v2, v14

    if-gez v14, :cond_2

    .line 158
    new-instance v9, Ljava/math/BigDecimal;

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 159
    .local v9, "result2":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 160
    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "MB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 163
    .end local v9    # "result2":Ljava/math/BigDecimal;
    :cond_2
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    div-double v12, v2, v14

    .line 164
    .local v12, "teraBytes":D
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v12, v14

    if-gez v14, :cond_3

    .line 165
    new-instance v10, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 166
    .local v10, "result3":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    .line 167
    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "GB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 169
    .end local v10    # "result3":Ljava/math/BigDecimal;
    :cond_3
    new-instance v11, Ljava/math/BigDecimal;

    invoke-direct {v11, v12, v13}, Ljava/math/BigDecimal;-><init>(D)V

    .line 170
    .local v11, "result4":Ljava/math/BigDecimal;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x2

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "TB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->c(Ljava/io/File;)V

    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "deleteThisPath"    # Z

    .prologue
    .line 113
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 118
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 119
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/lang/String;Z)V

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "files":[Ljava/io/File;
    .end local v2    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 135
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 126
    .restart local v0    # "file":Ljava/io/File;
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static b(D)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # D

    .prologue
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    .line 175
    div-double v2, p0, v4

    div-double v0, v2, v4

    .line 176
    .local v0, "gigaByte":D
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(Ljava/io/File;)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->a(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->c(Ljava/io/File;)V

    .line 38
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/shared_prefs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->c(Ljava/io/File;)V

    .line 46
    return-void
.end method

.method private static c(Ljava/io/File;)V
    .locals 4
    .param p0, "directory"    # Ljava/io/File;

    .prologue
    .line 55
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 57
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static d(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 69
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "children":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 72
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/xutils/util/c;->d(Ljava/io/File;)Z

    move-result v2

    .line 73
    .local v2, "success":Z
    if-nez v2, :cond_0

    .line 74
    const/4 v3, 0x0

    .line 78
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :goto_1
    return v3

    .line 71
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "success":Z
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "success":Z
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    goto :goto_1
.end method
