.class Lcom/mob/a/a/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/a/a/b;->a(Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/mob/a/a/b;


# direct methods
.method constructor <init>(Lcom/mob/a/a/b;Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mob/a/a/b$2;->c:Lcom/mob/a/a/b;

    iput-boolean p2, p0, Lcom/mob/a/a/b$2;->a:Z

    iput-object p3, p0, Lcom/mob/a/a/b$2;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/c/f;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 444
    .line 445
    :try_start_0
    iget-object v0, p0, Lcom/mob/a/a/b$2;->c:Lcom/mob/a/a/b;

    invoke-static {v0}, Lcom/mob/a/a/b;->a(Lcom/mob/a/a/b;)Ljava/io/File;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 450
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 455
    if-eqz v1, :cond_0

    .line 457
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 463
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 464
    :try_start_4
    iget-object v0, p0, Lcom/mob/a/a/b$2;->c:Lcom/mob/a/a/b;

    iget-boolean v1, p0, Lcom/mob/a/a/b$2;->a:Z

    invoke-static {v0, v1}, Lcom/mob/a/a/b;->a(Lcom/mob/a/a/b;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/mob/a/a/b$2;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "duid"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 471
    :goto_1
    return v4

    .line 452
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 453
    :goto_2
    :try_start_5
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 455
    if-eqz v1, :cond_3

    .line 457
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-object v0, v2

    .line 458
    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 457
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 458
    :cond_2
    :goto_4
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 468
    :catch_2
    move-exception v0

    .line 469
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_1

    .line 458
    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_4

    .line 455
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 452
    :catch_5
    move-exception v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method
