.class public Lcom/jiliguala/niuwa/logic/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/p/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "splash"

.field private static b:I

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput v0, Lcom/jiliguala/niuwa/logic/p/a;->b:I

    .line 38
    sput v0, Lcom/jiliguala/niuwa/logic/p/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x140

    const/16 v1, 0xf0

    .line 179
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->o()I

    move-result v0

    .line 180
    .local v0, "dpi":I
    if-gt v0, v1, :cond_0

    .line 181
    const-string v1, "_h.png"

    .line 187
    :goto_0
    return-object v1

    .line 182
    :cond_0
    if-le v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    .line 183
    const-string v1, "_xh.png"

    goto :goto_0

    .line 184
    :cond_1
    if-le v0, v2, :cond_2

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_2

    .line 185
    const-string v1, "_xxh.png"

    goto :goto_0

    .line 187
    :cond_2
    const-string v1, "_xh.png"

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 154
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 155
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v2, "content":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 158
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 161
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 162
    .local v7, "readString":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 163
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 171
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 172
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 175
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "readString":Ljava/lang/String;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    return-object v8

    .line 168
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 172
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 175
    const/4 v8, 0x0

    goto :goto_1

    .line 171
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 172
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 173
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 174
    throw v8

    .line 171
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 168
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method public static a(II)V
    .locals 0
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    .line 41
    sput p0, Lcom/jiliguala/niuwa/logic/p/a;->c:I

    .line 42
    sput p1, Lcom/jiliguala/niuwa/logic/p/a;->b:I

    .line 43
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v0, "splash"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/jiliguala/niuwa/logic/p/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/db/a;->e()V

    .line 54
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 138
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 139
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 148
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 146
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 147
    throw v4

    .line 145
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 142
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/logic/p/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "dList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    const-string v1, "splash"

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/jiliguala/niuwa/logic/p/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jiliguala/niuwa/logic/db/a;->a(Ljava/util/List;)V

    .line 49
    return-void
.end method

.method public static a(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;)V
    .locals 5
    .param p0, "splash"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .prologue
    .line 197
    if-nez p0, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->_id:Ljava/lang/String;

    iget v3, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->showTimes:I

    add-int/lit8 v3, v3, 0x1

    .line 201
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->clicked:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/db/daometa/f;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 200
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->a(Lcom/jiliguala/niuwa/logic/db/daometa/f;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-string v10, "splash"

    invoke-static {p0, v10}, Lcom/jiliguala/niuwa/logic/p/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "splashStr":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 59
    const/4 v10, 0x0

    .line 98
    :goto_0
    return-object v10

    .line 62
    :cond_0
    :try_start_0
    new-instance v10, Lcom/google/gson/Gson;

    invoke-direct {v10}, Lcom/google/gson/Gson;-><init>()V

    new-instance v11, Lcom/jiliguala/niuwa/logic/p/a$1;

    invoke-direct {v11}, Lcom/jiliguala/niuwa/logic/p/a$1;-><init>()V

    .line 63
    invoke-virtual {v11}, Lcom/jiliguala/niuwa/logic/p/a$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 62
    invoke-virtual {v10, v9, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 64
    .local v8, "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 65
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v6, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_a

    .line 67
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .line 68
    .local v7, "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 69
    .local v4, "l":J
    iget-wide v10, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->startts:J

    cmp-long v10, v4, v10

    if-ltz v10, :cond_1

    iget-wide v10, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->endts:J

    cmp-long v10, v4, v10

    if-lez v10, :cond_2

    .line 70
    :cond_1
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    :cond_2
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v10

    iget-object v11, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->_id:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/jiliguala/niuwa/logic/db/a;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/db/daometa/f;

    move-result-object v3

    .line 74
    .local v3, "record":Lcom/jiliguala/niuwa/logic/db/daometa/f;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->b()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v11, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->showcnt:I

    if-lt v10, v11, :cond_4

    .line 75
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 95
    .end local v2    # "i":I
    .end local v3    # "record":Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .end local v4    # "l":J
    .end local v6    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    .end local v7    # "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    .end local v8    # "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 78
    .restart local v2    # "i":I
    .restart local v3    # "record":Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .restart local v4    # "l":J
    .restart local v6    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    .restart local v7    # "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    .restart local v8    # "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    :cond_4
    if-eqz v3, :cond_5

    :try_start_1
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->c()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 79
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_5
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/login/a;->U()I

    move-result v0

    .line 83
    .local v0, "age":I
    iget v10, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->startage:I

    if-lt v0, v10, :cond_6

    iget v10, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->endage:I

    if-le v0, v10, :cond_7

    .line 84
    :cond_6
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_7
    if-nez v3, :cond_8

    const/4 v10, 0x0

    :goto_3
    iput v10, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->showTimes:I

    .line 87
    if-nez v3, :cond_9

    const/4 v10, 0x0

    :goto_4
    iput-boolean v10, v7, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->clicked:Z

    goto :goto_2

    .line 86
    :cond_8
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->b()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_3

    .line 87
    :cond_9
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/db/daometa/f;->c()Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    goto :goto_4

    .line 89
    .end local v0    # "age":I
    .end local v3    # "record":Lcom/jiliguala/niuwa/logic/db/daometa/f;
    .end local v4    # "l":J
    .end local v7    # "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    :cond_a
    invoke-interface {v8, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 90
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 91
    new-instance v10, Lcom/jiliguala/niuwa/logic/p/a$a;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/jiliguala/niuwa/logic/p/a$a;-><init>(Lcom/jiliguala/niuwa/logic/p/a$1;)V

    invoke-static {v8, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v4, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;>;"
    sget v7, Lcom/jiliguala/niuwa/logic/p/a;->c:I

    if-eqz v7, :cond_0

    sget v7, Lcom/jiliguala/niuwa/logic/p/a;->b:I

    if-nez v7, :cond_1

    .line 131
    :cond_0
    return-object v4

    .line 118
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/logic/p/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "suffix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .line 121
    .local v5, "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->img:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, "img":Ljava/lang/String;
    invoke-static {p0}, Lcom/bumptech/glide/l;->c(Landroid/content/Context;)Lcom/bumptech/glide/o;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/bumptech/glide/o;->a(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object v8

    sget v9, Lcom/jiliguala/niuwa/logic/p/a;->c:I

    sget v10, Lcom/jiliguala/niuwa/logic/p/a;->b:I

    invoke-virtual {v8, v9, v10}, Lcom/bumptech/glide/g;->a(II)Lcom/bumptech/glide/g/a;

    move-result-object v2

    .line 123
    .local v2, "ft":Lcom/bumptech/glide/g/a;, "Lcom/bumptech/glide/g/a<Ljava/io/File;>;"
    invoke-interface {v2}, Lcom/bumptech/glide/g/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 124
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->path:Ljava/lang/String;

    .line 125
    iput-object v3, v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->img:Ljava/lang/String;

    .line 126
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "ft":Lcom/bumptech/glide/g/a;, "Lcom/bumptech/glide/g/a<Ljava/io/File;>;"
    .end local v3    # "img":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;)V
    .locals 5
    .param p0, "splash"    # Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;

    .prologue
    .line 210
    if-nez p0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/db/a;->a()Lcom/jiliguala/niuwa/logic/db/a;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/logic/db/daometa/f;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->_id:Ljava/lang/String;

    iget v3, p0, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Splash;->showTimes:I

    .line 214
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/jiliguala/niuwa/logic/db/daometa/f;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/db/a;->b(Lcom/jiliguala/niuwa/logic/db/daometa/f;)V

    goto :goto_0
.end method
