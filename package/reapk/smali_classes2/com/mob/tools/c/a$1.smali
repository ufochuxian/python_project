.class Lcom/mob/tools/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/c/a;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/c/a;


# direct methods
.method constructor <init>(Lcom/mob/tools/c/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mob/tools/c/a;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/c/a;->a(Lcom/mob/tools/c/a;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1}, Lcom/mob/tools/c/a;->e(Lcom/mob/tools/c/a;Landroid/app/Activity;)V

    .line 60
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1}, Lcom/mob/tools/c/a;->c(Lcom/mob/tools/c/a;Landroid/app/Activity;)V

    .line 52
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1}, Lcom/mob/tools/c/a;->b(Lcom/mob/tools/c/a;Landroid/app/Activity;)V

    .line 48
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1, p2}, Lcom/mob/tools/c/a;->b(Lcom/mob/tools/c/a;Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1}, Lcom/mob/tools/c/a;->a(Lcom/mob/tools/c/a;Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mob/tools/c/a$1;->a:Lcom/mob/tools/c/a;

    invoke-static {v0, p1}, Lcom/mob/tools/c/a;->d(Lcom/mob/tools/c/a;Landroid/app/Activity;)V

    .line 56
    return-void
.end method
