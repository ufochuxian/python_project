.class public Lcom/jiliguala/niuwa/common/util/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "/storage/emulated/0/com.jiliguala.niuwa/interact"

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/jiliguala/niuwa/common/util/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/common/util/i;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "saveUrl"    # Ljava/lang/String;
    .param p2, "fileNamePrefix"    # Ljava/lang/String;

    .prologue
    .line 233
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 237
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 240
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 241
    .local v4, "fos":Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 242
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 243
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-object v2

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 247
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "directory":Ljava/io/File;
    instance-of v5, p0, Ljava/io/File;

    if-eqz v5, :cond_1

    move-object v0, p0

    .line 255
    check-cast v0, Ljava/io/File;

    .line 259
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    return-object v3

    .line 257
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "directory":Ljava/io/File;
    goto :goto_0

    .line 263
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 265
    .local v1, "fileArr":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 266
    aget-object v2, v1, v4

    .line 267
    .local v2, "fileOne":Ljava/io/File;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a()Lcom/jiliguala/niuwa/common/util/xutils/util/l;

    move-result-object v0

    new-instance v1, Lcom/jiliguala/niuwa/common/util/i$1;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/common/util/i$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/common/util/xutils/util/l;->a(Ljava/lang/Runnable;)V

    .line 315
    return-void
.end method

.method public static final a(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;Ljava/lang/String;Z)Z
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "append"    # Z

    .prologue
    const/4 v3, 0x0

    .line 321
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return v3

    .line 322
    :cond_1
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/i;->d(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 323
    const/4 v0, 0x0

    .line 325
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 327
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 329
    const/4 v3, 0x1

    .line 334
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 330
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 335
    throw v3

    .line 334
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 330
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_1
.end method

.method public static final a(Ljava/io/File;Z)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "isDirectory"    # Z

    .prologue
    const/4 v1, 0x0

    .line 104
    if-nez p0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    invoke-static {p0}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 110
    .local v0, "parent":Ljava/io/File;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_2
    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v1

    goto :goto_0

    .line 117
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 118
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 2
    .param p0, "fileAbsolutePath"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1

    .line 40
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "fileAbsolutePath"    # Ljava/lang/String;
    .param p1, "isDirectory"    # Z

    .prologue
    .line 88
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 92
    :goto_0
    return v1

    .line 91
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "file":Ljava/io/File;
    invoke-static {v0, p1}, Lcom/jiliguala/niuwa/common/util/i;->a(Ljava/io/File;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "directory":Ljava/io/File;
    instance-of v5, p0, Ljava/io/File;

    if-eqz v5, :cond_1

    move-object v0, p0

    .line 276
    check-cast v0, Ljava/io/File;

    .line 280
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_0
    return-object v3

    .line 278
    .end local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "directory":Ljava/io/File;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "directory":Ljava/io/File;
    goto :goto_0

    .line 284
    .restart local v3    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 286
    .local v1, "fileArr":[Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 287
    aget-object v2, v1, v4

    .line 288
    .local v2, "fileOne":Ljava/io/File;
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 286
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static final b(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_2

    .line 66
    const/4 v3, 0x1

    .line 71
    if-eqz v2, :cond_0

    .line 72
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    :cond_0
    move-object v1, v2

    .line 75
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return v3

    .line 71
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_2
    if-eqz v2, :cond_3

    .line 72
    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    :cond_3
    move-object v1, v2

    .line 75
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/FileNotFoundException;
    if-eqz v1, :cond_1

    .line 72
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 71
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 72
    invoke-static {v1}, Lcom/jiliguala/niuwa/common/util/o;->a(Ljava/io/Closeable;)V

    .line 74
    :cond_4
    throw v3
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/i;->b(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/io/File;)Z
    .locals 3
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 178
    if-nez p0, :cond_0

    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2

    .line 179
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 182
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    .line 185
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 186
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/i;->c(Ljava/io/File;)Z

    .line 185
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 193
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 131
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v2

    .line 134
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 139
    .local v1, "slash_index":I
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 140
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 141
    .local v2, "str":[Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, "dot_index":I
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 144
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    goto :goto_0

    .line 147
    .end local v0    # "dot_index":I
    :cond_2
    aput-object p0, v2, v4

    .line 148
    const-string v3, ""

    aput-object v3, v2, v5

    goto :goto_0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fileUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 155
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-object v1

    .line 158
    :cond_1
    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 159
    .local v2, "slash_index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 163
    add-int/lit8 v3, v2, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    .local v1, "fileName":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v1    # "fileName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private static d(Ljava/io/File;)Z
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 339
    if-nez p0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v1

    .line 340
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/jiliguala/niuwa/common/util/i;->e(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 197
    const-string v1, ""

    .line 199
    .local v1, "extension":Ljava/lang/String;
    :try_start_0
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static e(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 351
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 212
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static g(Ljava/lang/String;)J
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 220
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 228
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-wide v2
.end method
