.class final Lcom/mob/tools/c/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/c/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/mob/tools/c/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "Mob"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    .local v0, "folder":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mob/tools/c/n$a;->a:Ljava/io/File;

    .line 141
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->a:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 144
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    .line 145
    new-instance v1, Lcom/mob/tools/c/g;

    invoke-direct {v1}, Lcom/mob/tools/c/g;-><init>()V

    iput-object v1, p0, Lcom/mob/tools/c/n$a;->c:Lcom/mob/tools/c/g;

    .line 146
    invoke-direct {p0}, Lcom/mob/tools/c/n$a;->c()V

    .line 147
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-direct {p0}, Lcom/mob/tools/c/n$a;->d()V

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 9

    .prologue
    .line 150
    iget-object v7, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    monitor-enter v7

    .line 151
    :try_start_0
    iget-object v6, p0, Lcom/mob/tools/c/n$a;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 153
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/mob/tools/c/n$a;->a:Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v6, "utf-8"

    invoke-direct {v2, v1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 155
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 156
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 160
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 166
    iget-object v6, p0, Lcom/mob/tools/c/n$a;->c:Lcom/mob/tools/c/g;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/mob/tools/c/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v7

    .line 172
    return-void

    .line 167
    :catch_0
    move-exception v5

    .line 168
    .local v5, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 171
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method private d()V
    .locals 6

    .prologue
    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/mob/tools/c/n$a;->c:Lcom/mob/tools/c/g;

    iget-object v5, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Lcom/mob/tools/c/g;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "json":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/mob/tools/c/n$a;->a:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 191
    .local v0, "fos":Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v4, "utf-8"

    invoke-direct {v2, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 192
    .local v2, "osw":Ljava/io/OutputStreamWriter;
    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 193
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 194
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "osw":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v3

    .line 196
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;B)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # B

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 202
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 203
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p2

    .line 205
    .end local p2    # "defValue":B
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;C)C
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # C

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 275
    check-cast v0, Ljava/lang/String;

    .end local v0    # "o":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 277
    .end local p2    # "defValue":C
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # D

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 263
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    .line 265
    .end local p2    # "defValue":D
    :cond_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 251
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 253
    .end local p2    # "defValue":F
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 227
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 229
    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 239
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .line 241
    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 299
    check-cast v0, Ljava/lang/String;

    .line 301
    .end local v0    # "o":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v2, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 310
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v0, "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 312
    monitor-exit v2

    return-object v0

    .line 313
    .end local v0    # "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Ljava/lang/String;S)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # S

    .prologue
    .line 213
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 215
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p2

    .line 217
    .end local p2    # "defValue":S
    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, "all":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 319
    invoke-direct {p0}, Lcom/mob/tools/c/n$a;->d()V

    .line 320
    monitor-exit v1

    .line 321
    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    const/4 v1, 0x1

    .line 285
    invoke-direct {p0, p1}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 287
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_0

    .line 289
    :goto_0
    return v1

    .line 287
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1
    move v1, p2

    .line 289
    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 328
    iget-object v1, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/c/n$a;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 330
    invoke-direct {p0}, Lcom/mob/tools/c/n$a;->d()V

    .line 331
    monitor-exit v1

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 209
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public b(Ljava/lang/String;C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 281
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public b(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 269
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 270
    return-void
.end method

.method public b(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 257
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 233
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 245
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 246
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    return-void
.end method

.method public b(Ljava/lang/String;S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 221
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mob/tools/c/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 293
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/mob/tools/c/n$a;->b(Ljava/lang/String;B)V

    .line 294
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
