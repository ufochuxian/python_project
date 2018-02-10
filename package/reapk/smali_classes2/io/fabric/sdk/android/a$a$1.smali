.class Lio/fabric/sdk/android/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/a$a;->a(Lio/fabric/sdk/android/a$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/a$b;

.field final synthetic b:Lio/fabric/sdk/android/a$a;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/a$a;Lio/fabric/sdk/android/a$b;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/a$a;

    .prologue
    .line 102
    iput-object p1, p0, Lio/fabric/sdk/android/a$a$1;->b:Lio/fabric/sdk/android/a$a;

    iput-object p2, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 106
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/a$b;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 137
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/a$b;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 138
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/a$b;->onActivityPaused(Landroid/app/Activity;)V

    .line 122
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/a$b;->onActivityResumed(Landroid/app/Activity;)V

    .line 117
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 132
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1, p2}, Lio/fabric/sdk/android/a$b;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 133
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 111
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/a$b;->onActivityStarted(Landroid/app/Activity;)V

    .line 112
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 126
    iget-object v0, p0, Lio/fabric/sdk/android/a$a$1;->a:Lio/fabric/sdk/android/a$b;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/a$b;->onActivityStopped(Landroid/app/Activity;)V

    .line 127
    return-void
.end method
