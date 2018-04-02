.class public Lcom/jiliguala/niuwa/logic/db/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:I = 0x32


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/jiliguala/niuwa/logic/db/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/content/k;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 113
    const-string v4, "babyId = ?"

    .line 114
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 115
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/k;

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v0, "cursorLoader":Landroid/support/v4/content/k;
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Landroid/support/v4/content/k;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 394
    const-string v4, "type = ? AND download_status <> 0"

    .line 396
    .local v4, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 397
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/k;

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a()V
    .locals 16

    .prologue
    .line 44
    invoke-static {}, Lcom/jiliguala/niuwa/logic/k/a;->a()Lcom/jiliguala/niuwa/logic/k/a;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/k/a;->f()Ljava/util/ArrayList;

    move-result-object v4

    .line 45
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_5

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v0, "contentFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "contentLocalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .line 50
    .local v3, "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    new-instance v8, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v8}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 51
    .local v8, "offlineMetaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v7, Ljava/io/File;

    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mAudioPath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v7, "music":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_1

    .line 59
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 60
    const/4 v9, 0x4

    iput v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->downloadStatus:I

    .line 61
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(I)V

    .line 72
    :goto_1
    invoke-virtual {v8, v3}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;)V

    .line 73
    const/16 v9, 0x5001

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->b(I)V

    .line 74
    invoke-virtual {v8}, Lcom/jiliguala/niuwa/logic/db/a/e;->d()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mLrcPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 77
    new-instance v6, Ljava/io/File;

    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mLrcPath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, "lyric":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v9, v12, v14

    if-nez v9, :cond_3

    .line 79
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 87
    .end local v6    # "lyric":Ljava/io/File;
    .end local v7    # "music":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 63
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "music":Ljava/io/File;
    :cond_1
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mAudioPath:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 64
    new-instance v5, Lcom/jiliguala/niuwa/logic/db/a/d;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/db/a/d;-><init>()V

    .line 65
    .local v5, "localStorageMetaData":Lcom/jiliguala/niuwa/logic/db/a/d;
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/jiliguala/niuwa/logic/db/a/d;->a(Ljava/lang/String;)V

    .line 66
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mAudioPath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/jiliguala/niuwa/logic/db/a/d;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/db/a/d;->d()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v5    # "localStorageMetaData":Lcom/jiliguala/niuwa/logic/db/a/d;
    :cond_2
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mDownloadStatus:I

    iput v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->downloadStatus:I

    .line 70
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mDownloadStatus:I

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(I)V

    goto/16 :goto_1

    .line 81
    .restart local v6    # "lyric":Ljava/io/File;
    :cond_3
    new-instance v5, Lcom/jiliguala/niuwa/logic/db/a/d;

    invoke-direct {v5}, Lcom/jiliguala/niuwa/logic/db/a/d;-><init>()V

    .line 82
    .restart local v5    # "localStorageMetaData":Lcom/jiliguala/niuwa/logic/db/a/d;
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->lrc:Ljava/lang/String;

    invoke-static {v9}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/jiliguala/niuwa/logic/db/a/d;->a(Ljava/lang/String;)V

    .line 83
    iget-object v9, v3, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->res:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;

    iget-object v9, v9, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData$AudioResPart;->mLrcPath:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lcom/jiliguala/niuwa/logic/db/a/d;->b(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Lcom/jiliguala/niuwa/logic/db/a/d;->d()Landroid/content/ContentValues;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 91
    .end local v3    # "item":Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;
    .end local v5    # "localStorageMetaData":Lcom/jiliguala/niuwa/logic/db/a/d;
    .end local v6    # "lyric":Ljava/io/File;
    .end local v7    # "music":Ljava/io/File;
    .end local v8    # "offlineMetaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    :cond_4
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/content/ContentValues;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 93
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/jiliguala/niuwa/logic/db/a/d;->b:Landroid/net/Uri;

    const/4 v9, 0x0

    new-array v9, v9, [Landroid/content/ContentValues;

    .line 94
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ContentValues;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 96
    .end local v0    # "contentFavList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v1    # "contentLocalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 440
    const-string v1, "babyId = ? AND resId = ?"

    .line 441
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 442
    .local v0, "selectArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method public static a(Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;)V
    .locals 6
    .param p0, "member"    # Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;

    .prologue
    .line 604
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 605
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "uid = ?"

    .line 606
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 608
    .local v2, "selectionArgs":[Ljava/lang/String;
    sget-object v4, Lcom/jiliguala/niuwa/logic/db/a/f;->b:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 610
    new-instance v1, Lcom/jiliguala/niuwa/logic/db/a/f;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/db/a/f;-><init>()V

    .line 611
    .local v1, "metaData":Lcom/jiliguala/niuwa/logic/db/a/f;
    iget-object v4, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/jiliguala/niuwa/logic/db/a/f;->a(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/logic/db/a/f;->a(Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;)V

    .line 614
    sget-object v4, Lcom/jiliguala/niuwa/logic/db/a/f;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/db/a/f;->d()Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 615
    return-void
.end method

.method public static a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V
    .locals 14
    .param p0, "audio"    # Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 490
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 491
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v13, "resId = ?"

    .line 492
    .local v13, "where":Ljava/lang/String;
    new-array v11, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    aput-object v1, v11, v3

    .line 494
    .local v11, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 495
    new-instance v10, Lcom/jiliguala/niuwa/logic/db/a/b;

    invoke-direct {v10}, Lcom/jiliguala/niuwa/logic/db/a/b;-><init>()V

    .line 496
    .local v10, "metaData":Lcom/jiliguala/niuwa/logic/db/a/b;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;->_id:Ljava/lang/String;

    invoke-virtual {v10, v1}, Lcom/jiliguala/niuwa/logic/db/a/b;->a(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v10, p0}, Lcom/jiliguala/niuwa/logic/db/a/b;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;)V

    .line 499
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/db/a/b;->d()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 501
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 503
    .local v9, "cursor_query":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 505
    .local v7, "count":I
    const/16 v1, 0x32

    if-lt v7, v1, :cond_1

    .line 507
    const-string v5, "_id DESC limit 50"

    .line 508
    .local v5, "sortOrder":Ljava/lang/String;
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 510
    .local v8, "cursor_limit":Landroid/database/Cursor;
    :try_start_1
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 513
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 515
    .local v6, "_id":I
    const-string v13, "_id < ?"

    .line 516
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .local v12, "selectionArgs":[Ljava/lang/String;
    :try_start_2
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v13, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v11, v12

    .line 523
    .end local v6    # "_id":I
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    :try_start_3
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 525
    const/4 v8, 0x0

    .line 533
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v8    # "cursor_limit":Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 535
    const/4 v9, 0x0

    .line 538
    :cond_2
    :goto_1
    return-void

    .line 520
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v7    # "count":I
    .restart local v8    # "cursor_limit":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 523
    :goto_2
    :try_start_4
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 524
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 525
    const/4 v8, 0x0

    goto :goto_0

    .line 523
    :catchall_0
    move-exception v1

    :goto_3
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 525
    const/4 v8, 0x0

    .line 527
    :cond_3
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 530
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v8    # "cursor_limit":Landroid/database/Cursor;
    :catch_1
    move-exception v1

    .line 533
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 535
    const/4 v9, 0x0

    goto :goto_1

    .line 533
    :catchall_1
    move-exception v1

    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 534
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 535
    const/4 v9, 0x0

    .line 537
    :cond_4
    throw v1

    .line 523
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v6    # "_id":I
    .restart local v7    # "count":I
    .restart local v8    # "cursor_limit":Landroid/database/Cursor;
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v11, v12

    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    goto :goto_3

    .line 520
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v11, v12

    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    goto :goto_2
.end method

.method public static a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V
    .locals 15
    .param p0, "video"    # Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 541
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 542
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v14, "resId = ?"

    .line 543
    .local v14, "where":Ljava/lang/String;
    new-array v12, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    aput-object v1, v12, v3

    .line 546
    .local v12, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    new-instance v11, Lcom/jiliguala/niuwa/logic/db/a/h;

    invoke-direct {v11}, Lcom/jiliguala/niuwa/logic/db/a/h;-><init>()V

    .line 553
    .local v11, "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;->_id:Ljava/lang/String;

    invoke-virtual {v11, v1}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v11, p0}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;)V

    .line 558
    :try_start_1
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/db/a/h;->d()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    :goto_1
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 566
    .local v9, "cursor_query":Landroid/database/Cursor;
    :try_start_2
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 567
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 568
    .local v7, "count":I
    const/16 v1, 0x32

    if-lt v7, v1, :cond_1

    .line 570
    const-string v5, "_id DESC limit 50"

    .line 571
    .local v5, "sortOrder":Ljava/lang/String;
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 573
    .local v8, "cursor_limit":Landroid/database/Cursor;
    :try_start_3
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    .line 576
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 578
    .local v6, "_id":I
    const-string v14, "_id < ?"

    .line 579
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 581
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .local v13, "selectionArgs":[Ljava/lang/String;
    :try_start_4
    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1, v14, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v12, v13

    .line 586
    .end local v6    # "_id":I
    .end local v13    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    :try_start_5
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 588
    const/4 v8, 0x0

    .line 596
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v8    # "cursor_limit":Landroid/database/Cursor;
    :cond_1
    :goto_2
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 598
    const/4 v9, 0x0

    .line 601
    :cond_2
    :goto_3
    return-void

    .line 547
    .end local v9    # "cursor_query":Landroid/database/Cursor;
    .end local v11    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    :catch_0
    move-exception v10

    .line 548
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 549
    const-string v1, "\"\u770b\"\u5386\u53f2\u8bb0\u5f55\u6dfb\u52a0\u5931\u8d25"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 559
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "metaData":Lcom/jiliguala/niuwa/logic/db/a/h;
    :catch_1
    move-exception v10

    .line 560
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    .line 561
    const-string v1, "\"\u770b\"\u5386\u53f2\u8bb0\u5f55\u6dfb\u52a0\u5931\u8d25"

    invoke-static {v1}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 583
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v7    # "count":I
    .restart local v8    # "cursor_limit":Landroid/database/Cursor;
    .restart local v9    # "cursor_query":Landroid/database/Cursor;
    :catch_2
    move-exception v1

    .line 586
    :goto_4
    :try_start_6
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 588
    const/4 v8, 0x0

    goto :goto_2

    .line 586
    :catchall_0
    move-exception v1

    :goto_5
    invoke-static {v8}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 587
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 588
    const/4 v8, 0x0

    .line 590
    :cond_3
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 593
    .end local v5    # "sortOrder":Ljava/lang/String;
    .end local v7    # "count":I
    .end local v8    # "cursor_limit":Landroid/database/Cursor;
    :catch_3
    move-exception v1

    .line 596
    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 598
    const/4 v9, 0x0

    goto :goto_3

    .line 596
    :catchall_1
    move-exception v1

    invoke-static {v9}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 598
    const/4 v9, 0x0

    .line 600
    :cond_4
    throw v1

    .line 586
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .restart local v5    # "sortOrder":Ljava/lang/String;
    .restart local v6    # "_id":I
    .restart local v7    # "count":I
    .restart local v8    # "cursor_limit":Landroid/database/Cursor;
    .restart local v13    # "selectionArgs":[Ljava/lang/String;
    :catchall_2
    move-exception v1

    move-object v12, v13

    .end local v13    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    goto :goto_5

    .line 583
    .end local v12    # "selectionArgs":[Ljava/lang/String;
    .restart local v13    # "selectionArgs":[Ljava/lang/String;
    :catch_4
    move-exception v1

    move-object v12, v13

    .end local v13    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "selectionArgs":[Ljava/lang/String;
    goto :goto_4
.end method

.method public static a(Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v1, "resId=?"

    .line 122
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 123
    .local v0, "selectArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Z
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 104
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 143
    const/4 v6, 0x0

    .line 145
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 147
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 154
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 154
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 158
    goto :goto_0

    .line 151
    :catch_0
    move-exception v7

    .line 154
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 152
    goto :goto_0

    .line 154
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_4
    throw v0
.end method

.method public static b(Landroid/content/Context;)Landroid/support/v4/content/k;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v0, Landroid/support/v4/content/k;

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v0, "cursorLoader":Landroid/support/v4/content/k;
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resId"    # Ljava/lang/String;

    .prologue
    .line 451
    const-string v1, "babyId = ? AND resId = ?"

    .line 452
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 453
    .local v0, "selectArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 127
    const-string v1, "resId=?"

    .line 128
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 129
    .local v0, "selectArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public static c()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 162
    const/4 v6, 0x0

    .line 164
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 166
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 173
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 177
    goto :goto_0

    .line 170
    :catch_0
    move-exception v7

    .line 173
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 171
    goto :goto_0

    .line 173
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_4
    throw v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 9
    .param p0, "resId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 374
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "download_status"

    aput-object v0, v2, v8

    .line 375
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "resId == ?"

    .line 376
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 377
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 378
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 380
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    const-string v0, "download_status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 386
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 390
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 390
    goto :goto_0

    .line 383
    :catch_0
    move-exception v7

    .line 386
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 384
    goto :goto_0

    .line 386
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_4
    throw v0
.end method

.method public static c(Landroid/content/Context;)Landroid/support/v4/content/k;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 138
    new-instance v0, Landroid/support/v4/content/k;

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v0, "cursorLoader":Landroid/support/v4/content/k;
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Landroid/support/v4/content/k;
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 406
    const-string v4, "babyId = ?"

    .line 407
    .local v4, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    .line 408
    .local v5, "selectionArgs":[Ljava/lang/String;
    new-instance v0, Landroid/support/v4/content/k;

    sget-object v2, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    move-object v1, p0

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/k;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .local v0, "cursorLoader":Landroid/support/v4/content/k;
    return-object v0
.end method

.method public static d()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 181
    const/4 v7, 0x0

    .line 183
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/b;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 185
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 186
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v8, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    new-instance v6, Lcom/jiliguala/niuwa/logic/db/a/b;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/logic/db/a/b;-><init>()V

    .line 190
    .local v6, "audio":Lcom/jiliguala/niuwa/logic/db/a/b;
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/db/a/b;->a(Landroid/database/Cursor;)V

    .line 191
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/db/a/b;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    .end local v6    # "audio":Lcom/jiliguala/niuwa/logic/db/a/b;
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :catch_0
    move-exception v9

    .line 198
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v8, v10

    .line 202
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 198
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_2
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 198
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_3
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, v10

    .line 202
    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 199
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_5
    throw v0
.end method

.method public static e()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 206
    const/4 v7, 0x0

    .line 208
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/h;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 210
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 211
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v8, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    new-instance v6, Lcom/jiliguala/niuwa/logic/db/a/h;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/logic/db/a/h;-><init>()V

    .line 215
    .local v6, "audio":Lcom/jiliguala/niuwa/logic/db/a/h;
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Landroid/database/Cursor;)V

    .line 216
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/db/a/h;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 220
    .end local v6    # "audio":Lcom/jiliguala/niuwa/logic/db/a/h;
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :catch_0
    move-exception v9

    .line 223
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v8, v10

    .line 227
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 223
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_2
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 223
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_3
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, v10

    .line 227
    goto :goto_1

    .line 223
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 224
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_5
    throw v0
.end method

.method public static f()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 231
    const/4 v7, 0x0

    .line 233
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 236
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v8, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 239
    new-instance v6, Lcom/jiliguala/niuwa/logic/db/a/b;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/logic/db/a/b;-><init>()V

    .line 240
    .local v6, "audio":Lcom/jiliguala/niuwa/logic/db/a/b;
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/db/a/b;->a(Landroid/database/Cursor;)V

    .line 241
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/db/a/b;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    .end local v6    # "audio":Lcom/jiliguala/niuwa/logic/db/a/b;
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :catch_0
    move-exception v9

    .line 248
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v8, v10

    .line 252
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 248
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_2
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 248
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleAudioData;>;"
    :cond_3
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, v10

    .line 252
    goto :goto_1

    .line 248
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_5
    throw v0
.end method

.method public static g()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 257
    const/4 v6, 0x0

    .line 259
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 261
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 262
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 263
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    new-instance v9, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 266
    .local v9, "offlineMetaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v9, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 267
    invoke-virtual {v9}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 271
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    .end local v9    # "offlineMetaData":Lcom/jiliguala/niuwa/logic/db/a/e;
    :catch_0
    move-exception v8

    .line 274
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v7, v10

    .line 278
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v7

    .line 274
    .restart local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_2
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 274
    .end local v7    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;>;"
    :cond_3
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v7, v10

    .line 278
    goto :goto_1

    .line 274
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_5
    throw v0
.end method

.method public static h()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 283
    const/4 v7, 0x0

    .line 285
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 287
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 288
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v8, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    new-instance v6, Lcom/jiliguala/niuwa/logic/db/a/h;

    invoke-direct {v6}, Lcom/jiliguala/niuwa/logic/db/a/h;-><init>()V

    .line 292
    .local v6, "audio":Lcom/jiliguala/niuwa/logic/db/a/h;
    invoke-virtual {v6, v7}, Lcom/jiliguala/niuwa/logic/db/a/h;->a(Landroid/database/Cursor;)V

    .line 293
    invoke-virtual {v6}, Lcom/jiliguala/niuwa/logic/db/a/h;->b()Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 297
    .end local v6    # "audio":Lcom/jiliguala/niuwa/logic/db/a/h;
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :catch_0
    move-exception v9

    .line 300
    .local v9, "e":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v8, v10

    .line 304
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v8

    .line 300
    .restart local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_2
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 300
    .end local v8    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/SingleVideoData;>;"
    :cond_3
    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v8, v10

    .line 304
    goto :goto_1

    .line 300
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 301
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_5
    throw v0
.end method

.method public static i()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 309
    const-string v3, "babyId = ?"

    .line 310
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 311
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 313
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/a;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 322
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 326
    goto :goto_0

    .line 319
    :catch_0
    move-exception v7

    .line 322
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 320
    goto :goto_0

    .line 322
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_4
    throw v0
.end method

.method public static j()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 330
    const-string v3, "type = ? AND download_status <> 0"

    .line 332
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "20481"

    aput-object v0, v4, v8

    .line 333
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 335
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 337
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 338
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 344
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_0
    :goto_0
    return v0

    .line 344
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 348
    goto :goto_0

    .line 341
    :catch_0
    move-exception v7

    .line 344
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 342
    goto :goto_0

    .line 344
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 345
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_4
    throw v0
.end method

.method public static k()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 352
    const-string v3, "type = ? AND download_status == 3"

    .line 354
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "20481"

    aput-object v0, v4, v8

    .line 355
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 357
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 359
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 360
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 366
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 370
    goto :goto_0

    .line 363
    :catch_0
    move-exception v7

    .line 366
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 364
    goto :goto_0

    .line 366
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_4
    throw v0
.end method

.method public static l()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 414
    const-string v3, "babyId = ?"

    .line 415
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 416
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 418
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 419
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/g;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 420
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 421
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 427
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 431
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v8

    .line 431
    goto :goto_0

    .line 424
    :catch_0
    move-exception v7

    .line 427
    .local v7, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    .line 425
    goto :goto_0

    .line 427
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 428
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 430
    :cond_4
    throw v0
.end method

.method public static m()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 457
    const-string v3, "type = ? AND download_status <> 0"

    .line 459
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    const-string v0, "20481"

    aput-object v0, v4, v1

    .line 460
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 462
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 464
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 467
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 468
    new-instance v7, Lcom/jiliguala/niuwa/logic/db/a/e;

    invoke-direct {v7}, Lcom/jiliguala/niuwa/logic/db/a/e;-><init>()V

    .line 469
    .local v7, "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    invoke-virtual {v7, v6}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(Landroid/database/Cursor;)V

    .line 470
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v0

    if-eq v0, v10, :cond_0

    .line 471
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/db/a/e;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 472
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lcom/jiliguala/niuwa/logic/db/a/e;->a(I)V

    .line 473
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/db/a/e;->c()Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;->downloadStatus:I

    .line 474
    const-string v8, "resId = ?"

    .line 475
    .local v8, "selection1":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/db/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    .line 476
    .local v9, "selectionArgs1":[Ljava/lang/String;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/jiliguala/niuwa/logic/db/a/e;->b:Landroid/net/Uri;

    .line 477
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/logic/db/a/e;->d()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 467
    .end local v8    # "selection1":Ljava/lang/String;
    .end local v9    # "selectionArgs1":[Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 481
    .end local v7    # "item":Lcom/jiliguala/niuwa/logic/db/a/e;
    :catch_0
    move-exception v0

    .line 483
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_2
    :goto_1
    return-void

    .line 483
    :cond_3
    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 483
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/jiliguala/niuwa/logic/db/b;->a(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 486
    :cond_4
    throw v0
.end method
