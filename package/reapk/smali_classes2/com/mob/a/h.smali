.class public Lcom/mob/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mob/tools/c/l;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 25
    :cond_0
    return-object v0
.end method

.method public static final a(Ljava/io/File;Lcom/mob/a/a;)V
    .locals 2

    .prologue
    .line 30
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 36
    :cond_1
    new-instance v0, Lcom/mob/tools/c/f;

    invoke-direct {v0}, Lcom/mob/tools/c/f;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/f;->a(Ljava/lang/String;)V

    .line 38
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mob/tools/c/f;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-interface {p1, v0}, Lcom/mob/a/a;->a(Lcom/mob/tools/c/f;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 40
    invoke-virtual {v0}, Lcom/mob/tools/c/f;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_2
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method
