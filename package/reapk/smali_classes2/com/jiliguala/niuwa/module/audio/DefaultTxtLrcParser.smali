.class public Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->instance:Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static final getInstance()Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->instance:Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;

    return-object v0
.end method

.method private parseLrc(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 69
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v2, "br":Ljava/io/BufferedReader;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v6, "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    const/4 v0, 0x1

    .local v0, "base_time":I
    move v1, v0

    .line 75
    .end local v0    # "base_time":I
    .local v1, "base_time":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "lrcLine":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 76
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "base_time":I
    .restart local v0    # "base_time":I
    :try_start_1
    invoke-static {v5, v1}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 77
    .local v7, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 78
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    move v1, v0

    .line 80
    .end local v0    # "base_time":I
    .restart local v1    # "base_time":I
    goto :goto_0

    .line 82
    .end local v7    # "rows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    :cond_1
    :try_start_2
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 83
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_5

    .line 94
    :cond_2
    if-eqz v2, :cond_3

    .line 96
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_1
    move-object v6, v10

    .line 103
    .end local v1    # "base_time":I
    .end local v5    # "lrcLine":Ljava/lang/String;
    .end local v6    # "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    :cond_4
    :goto_2
    return-object v6

    .line 97
    .restart local v1    # "base_time":I
    .restart local v5    # "lrcLine":Ljava/lang/String;
    .restart local v6    # "lrcRows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    :catch_0
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    :try_start_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_6

    .line 87
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c()I

    move-result v11

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    invoke-virtual {v9}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->c()I

    move-result v9

    sub-int v9, v11, v9

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->a(I)V

    .line 86
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 89
    :cond_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/common/widget/lyric/b;

    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Lcom/jiliguala/niuwa/common/widget/lyric/b;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    if-eqz v2, :cond_4

    .line 96
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 97
    :catch_1
    move-exception v3

    .line 98
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 90
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "i":I
    .end local v5    # "lrcLine":Ljava/lang/String;
    :catch_2
    move-exception v3

    move v0, v1

    .line 94
    .end local v1    # "base_time":I
    .restart local v0    # "base_time":I
    .local v3, "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v2, :cond_7

    .line 96
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    :goto_5
    move-object v6, v10

    .line 92
    goto :goto_2

    .line 97
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 98
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 94
    .end local v0    # "base_time":I
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "base_time":I
    :catchall_0
    move-exception v8

    move v0, v1

    .end local v1    # "base_time":I
    .restart local v0    # "base_time":I
    :goto_6
    if-eqz v2, :cond_8

    .line 96
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 101
    :cond_8
    :goto_7
    throw v8

    .line 97
    :catch_4
    move-exception v3

    .line 98
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 94
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v5    # "lrcLine":Ljava/lang/String;
    :catchall_1
    move-exception v8

    goto :goto_6

    .line 90
    :catch_5
    move-exception v3

    goto :goto_4
.end method


# virtual methods
.method public getLrcRows(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "full_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/common/widget/lyric/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v6, 0x0

    .line 40
    .local v6, "rows":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/common/widget/lyric/b;>;"
    const/4 v3, 0x0

    .line 41
    .local v3, "is":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 44
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v3    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    .local v7, "sb":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 49
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 54
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 55
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 58
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 61
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v6

    .line 51
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 52
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/jiliguala/niuwa/module/audio/DefaultTxtLrcParser;->parseLrc(Ljava/lang/String;)Ljava/util/List;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v6

    .line 58
    :cond_1
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 60
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 58
    .end local v5    # "line":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 59
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 60
    throw v8

    .line 58
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 54
    :catch_1
    move-exception v2

    goto :goto_1

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method
