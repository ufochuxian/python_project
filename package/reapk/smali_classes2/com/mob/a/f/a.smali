.class public abstract Lcom/mob/a/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/b/b;
.implements Lcom/mob/tools/b/c;
.implements Lcom/mob/tools/log/a;


# instance fields
.field private a:Lcom/mob/a/f/d;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/mob/a/f/d;->a()Lcom/mob/a/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/f/a;->a:Lcom/mob/a/f/d;

    .line 23
    iget-object v0, p0, Lcom/mob/a/f/a;->a:Lcom/mob/a/f/d;

    invoke-virtual {p0}, Lcom/mob/a/f/a;->a()I

    move-result v1

    invoke-virtual {p0}, Lcom/mob/a/f/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mob/a/f/d;->a(ILjava/lang/String;)V

    .line 26
    :try_start_0
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.sharesdk.log"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mob/a/f/a;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mob/a/f/a;->e:Z

    .line 34
    return-void

    .line 31
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method final a(ILjava/lang/String;)I
    .locals 3

    .prologue
    .line 68
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mob/a/f/a;->e:Z

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 71
    const-string v1, "cn.sharesdk.log"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v2, "priority"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v2, "msg"

    invoke-static {v1, p2}, Lcom/mob/tools/c/d;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 76
    invoke-static {}, Lcom/mob/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-static {}, Lcom/mob/tools/c;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0, p2, p5}, Lcom/mob/a/f/a;->a(ILjava/lang/String;)I

    .line 47
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/mob/a/f/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "SHARESDK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    const-string v0, "com.mob."

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cn.sharesdk."

    invoke-virtual {p5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :cond_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 58
    iget-object v0, p0, Lcom/mob/a/f/a;->a:Lcom/mob/a/f/d;

    invoke-virtual {p0}, Lcom/mob/a/f/a;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3, p1, p5}, Lcom/mob/a/f/d;->b(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_3
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 60
    iget-object v0, p0, Lcom/mob/a/f/a;->a:Lcom/mob/a/f/d;

    invoke-virtual {p0}, Lcom/mob/a/f/a;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3, p1, p5}, Lcom/mob/a/f/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_4
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mob/a/f/a;->a:Lcom/mob/a/f/d;

    invoke-virtual {p0}, Lcom/mob/a/f/a;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3, p1, p5}, Lcom/mob/a/f/d;->a(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method
