.class public Lcom/jiliguala/niuwa/logic/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;
.implements Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;


# static fields
.field private static final a:Ljava/lang/String; = "skin"

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/gson/Gson;

.field private i:Lrx/i/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/d/a;->k(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/m/a;->b:Ljava/lang/String;

    .line 49
    const-class v0, Lcom/jiliguala/niuwa/logic/m/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/m/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->e:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/m/a;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->g:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->h:Lcom/google/gson/Gson;

    .line 63
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->i:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/i/b;)Lrx/i/b;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->i:Lrx/i/b;

    .line 64
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/m/a;->d()V

    .line 65
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v4, 0x0

    .line 290
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 291
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 292
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .local v2, "content":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 295
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 298
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "readString":Ljava/lang/String;
    :goto_0
    if-eqz v7, :cond_0

    .line 300
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 308
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v6}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 312
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "readString":Ljava/lang/String;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :goto_1
    return-object v8

    .line 305
    :catch_0
    move-exception v3

    .line 306
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 312
    const/4 v8, 0x0

    goto :goto_1

    .line 308
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_3
    invoke-static {v4}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 309
    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 310
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    throw v8

    .line 308
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

    .line 305
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

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 124
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 125
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .local v3, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v3, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v3}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 134
    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 132
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    throw v4

    .line 131
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 128
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "osw":Ljava/io/OutputStreamWriter;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v2    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_1
.end method

.method static synthetic a(Lcom/jiliguala/niuwa/logic/m/a;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/logic/m/a;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/m/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v5, 0x0

    .line 217
    .local v5, "successCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_c

    .line 218
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    .line 219
    .local v4, "skin":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->_id:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/jiliguala/niuwa/logic/m/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/logic/m/a;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    .line 221
    new-instance v0, Ljava/io/File;

    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "list":[Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 224
    array-length v7, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_a

    aget-object v3, v2, v6

    .line 225
    .local v3, "name":Ljava/lang/String;
    const-string v8, "mc_bg_placeholder"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 226
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->mcBg:Ljava/lang/String;

    .line 224
    :cond_2
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 227
    :cond_3
    const-string v8, "phonics_bg_placeholder"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 228
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->phBg:Ljava/lang/String;

    goto :goto_3

    .line 229
    :cond_4
    const-string v8, "oldmap_bg_placeholder"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 230
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->oldmapBg:Ljava/lang/String;

    goto :goto_3

    .line 231
    :cond_5
    const-string v8, "entrance_listen"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 232
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->listenIcon:Ljava/lang/String;

    goto :goto_3

    .line 233
    :cond_6
    const-string v8, "entrance_watch"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 234
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->watchIcon:Ljava/lang/String;

    goto :goto_3

    .line 235
    :cond_7
    const-string v8, "entrance_reading"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 236
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->readingIcon:Ljava/lang/String;

    goto :goto_3

    .line 237
    :cond_8
    const-string v8, "entrance_flashcard"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 238
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->flashIcon:Ljava/lang/String;

    goto :goto_3

    .line 239
    :cond_9
    const-string v8, "img_sdoufu"

    invoke-virtual {v3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 240
    iput-object v3, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->squareBg:Ljava/lang/String;

    goto :goto_3

    .line 245
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "list":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_a
    iget-object v6, v4, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->path:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 246
    add-int/lit8 v5, v5, 0x1

    .line 217
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 249
    .end local v4    # "skin":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    :cond_c
    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 250
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v6

    const-string v7, "skin"

    iget-object v8, p0, Lcom/jiliguala/niuwa/logic/m/a;->h:Lcom/google/gson/Gson;

    iget-object v9, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/jiliguala/niuwa/logic/m/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 118
    :cond_0
    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/m/a;->f:Ljava/util/List;

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    .line 100
    .local v3, "skin":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/logic/m/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "downloadUrl":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/m/a;->e:Landroid/content/Context;

    const-class v6, Lcom/jiliguala/niuwa/services/DownloadService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v2, "mDownloadResService":Landroid/content/Intent;
    sget-object v5, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v5, "type"

    const/4 v6, 0x6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v5, "_id"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v5, "url"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v5, "path"

    sget-object v6, Lcom/jiliguala/niuwa/logic/m/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v5, "interact_res_id"

    iget-object v6, v3, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v5, "download_type"

    const/4 v6, 0x5

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 110
    :try_start_1
    iget-object v5, p0, Lcom/jiliguala/niuwa/logic/m/a;->e:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 114
    .end local v0    # "downloadUrl":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "mDownloadResService":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 115
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 73
    new-instance v1, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/receivers/DownloadReceiver;-><init>(Lcom/jiliguala/niuwa/receivers/DownloadReceiver$a;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/logic/m/a;->d:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/jiliguala/niuwa/services/DownloadService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/m/a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/m/a;->d:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x140

    const/16 v1, 0xf0

    .line 137
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->o()I

    move-result v0

    .line 138
    .local v0, "dpi":I
    if-gt v0, v1, :cond_0

    .line 139
    const-string v1, "_h"

    .line 145
    :goto_0
    return-object v1

    .line 140
    :cond_0
    if-le v0, v1, :cond_1

    if-gt v0, v2, :cond_1

    .line 141
    const-string v1, "_xh"

    goto :goto_0

    .line 142
    :cond_1
    if-le v0, v2, :cond_2

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_2

    .line 143
    const-string v1, "_xxh"

    goto :goto_0

    .line 145
    :cond_2
    const-string v1, "_xh"

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 260
    const-string v8, "skin"

    invoke-static {p1, v8}, Lcom/jiliguala/niuwa/logic/m/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "splashStr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v9

    .line 284
    :goto_0
    return-object v8

    .line 265
    :cond_0
    :try_start_0
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    new-instance v10, Lcom/jiliguala/niuwa/logic/m/a$2;

    invoke-direct {v10, p0}, Lcom/jiliguala/niuwa/logic/m/a$2;-><init>(Lcom/jiliguala/niuwa/logic/m/a;)V

    .line 266
    invoke-virtual {v10}, Lcom/jiliguala/niuwa/logic/m/a$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 265
    invoke-virtual {v8, v7, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 267
    .local v6, "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 268
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v4, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 270
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;

    .line 271
    .local v5, "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 272
    .local v2, "l":J
    iget-wide v10, v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->startts:J

    cmp-long v8, v2, v10

    if-ltz v8, :cond_1

    iget-wide v10, v5, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;->endts:J

    cmp-long v8, v2, v10

    if-lez v8, :cond_2

    .line 273
    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 276
    .end local v2    # "l":J
    .end local v5    # "splash":Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    :cond_3
    invoke-interface {v6, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 277
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 278
    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v1    # "i":I
    .end local v4    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    .end local v6    # "splashList":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v8, v9

    .line 284
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/logic/m/a;->b()V

    .line 69
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->i:Lrx/i/b;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/w;->a(Lrx/m;)V

    .line 70
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/jiliguala/niuwa/logic/network/json/HomeTemplate$DataBean$Skin;>;"
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/logic/m/a;->b(Ljava/util/List;)V

    .line 91
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->d:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/m/a;->d:Lcom/jiliguala/niuwa/receivers/DownloadReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->e:Landroid/content/Context;

    const-string v1, "skin"

    const-string v2, ""

    invoke-direct {p0, v0, v1, v2}, Lcom/jiliguala/niuwa/logic/m/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onDownloadTaskAdded(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onDownloadTaskComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "full_path"    # Ljava/lang/String;
    .param p4, "download_type"    # I

    .prologue
    .line 157
    const/4 v0, 0x5

    if-eq v0, p4, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-static {p1}, Lcom/jiliguala/niuwa/common/util/x;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "md5Name":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/logic/m/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v6, "destFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/jiliguala/niuwa/logic/m/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v5, "srcFile":Ljava/io/File;
    invoke-static {}, Lcom/jiliguala/niuwa/services/f;->a()Lcom/jiliguala/niuwa/services/f;

    move-result-object v0

    sget-object v7, Lcom/jiliguala/niuwa/logic/m/a;->b:Ljava/lang/String;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    invoke-virtual/range {v0 .. v7}, Lcom/jiliguala/niuwa/services/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jiliguala/niuwa/module/interact/course/viewwidget/loading/UnzipFileInterface;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDownloadTaskError(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "errorCode"    # I

    .prologue
    .line 177
    return-void
.end method

.method public onDownloadTaskProgress(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I
    .param p4, "progress"    # J

    .prologue
    .line 172
    return-void
.end method

.method public onDownloadTaskStop(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "download_type"    # I

    .prologue
    .line 182
    return-void
.end method

.method public onUnZipFail()V
    .locals 0

    .prologue
    .line 257
    return-void
.end method

.method public onUnZipSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/m/a;->i:Lrx/i/b;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lrx/e;->a(Ljava/lang/Object;)Lrx/e;

    move-result-object v1

    .line 192
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v1

    .line 193
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/logic/m/a$1;

    invoke-direct {v2, p0, p1}, Lcom/jiliguala/niuwa/logic/m/a$1;-><init>(Lcom/jiliguala/niuwa/logic/m/a;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v1, v2}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Lrx/i/b;->a(Lrx/m;)V

    .line 210
    return-void
.end method

.method public refreshUnZipFileProgress(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 187
    return-void
.end method
