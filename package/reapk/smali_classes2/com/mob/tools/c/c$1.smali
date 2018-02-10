.class final Lcom/mob/tools/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/a/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/c/c;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mob/tools/c/c$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/tools/c/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/tools/c/c$1;->c:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/a/g;)V
    .locals 16
    .param p1, "conn"    # Lcom/mob/tools/a/g;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface/range {p1 .. p1}, Lcom/mob/tools/a/g;->a()I

    move-result v10

    .line 218
    .local v10, "status":I
    const/16 v13, 0xc8

    if-ne v10, v13, :cond_7

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/c/c$1;->a:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mob/tools/c/c;->a(Lcom/mob/tools/a/g;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 220
    .local v8, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/c/c$1;->b:Ljava/lang/String;

    invoke-direct {v3, v13, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v3, "cache":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/c/c$1;->c:Ljava/util/HashMap;

    const-string v14, "bitmap"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 225
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 227
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 231
    :cond_3
    const/4 v1, 0x0

    .line 233
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Lcom/mob/tools/c/c$1$1;

    invoke-interface/range {p1 .. p1}, Lcom/mob/tools/a/g;->b()Ljava/io/InputStream;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Lcom/mob/tools/c/c$1$1;-><init>(Lcom/mob/tools/c/c$1;Ljava/io/InputStream;)V

    .line 246
    .local v5, "fis":Ljava/io/FilterInputStream;
    const/4 v13, 0x1

    invoke-static {v5, v13}, Lcom/mob/tools/c/c;->a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 254
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-nez v13, :cond_0

    .line 255
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local v6, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".gif"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".png"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 257
    :cond_4
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x64

    invoke-virtual {v1, v13, v14, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 261
    :goto_1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 262
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 263
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mob/tools/c/c$1;->c:Ljava/util/HashMap;

    const-string v14, "bitmap"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 247
    .end local v5    # "fis":Ljava/io/FilterInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    .line 248
    .local v11, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 249
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 251
    :cond_5
    throw v11

    .line 259
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v5    # "fis":Ljava/io/FilterInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v14, 0x50

    invoke-virtual {v1, v13, v14, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_1

    .line 267
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "cache":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FilterInputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "name":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .local v9, "sb":Ljava/lang/StringBuilder;
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-interface/range {p1 .. p1}, Lcom/mob/tools/a/g;->c()Ljava/io/InputStream;

    move-result-object v13

    const-string v14, "utf-8"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-direct {v7, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 269
    .local v7, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 270
    .local v2, "br":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, "txt":Ljava/lang/String;
    :goto_2
    if-eqz v12, :cond_9

    .line 272
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    if-lez v13, :cond_8

    .line 273
    const/16 v13, 0xa

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    :cond_8
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 278
    :cond_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 280
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 281
    .local v4, "errMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "error"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v13, "status"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v13, Ljava/lang/Throwable;

    new-instance v14, Lcom/mob/tools/c/g;

    invoke-direct {v14}, Lcom/mob/tools/c/g;-><init>()V

    invoke-virtual {v14, v4}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v13
.end method
