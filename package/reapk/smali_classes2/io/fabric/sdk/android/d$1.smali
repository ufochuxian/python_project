.class Lio/fabric/sdk/android/d$1;
.super Lio/fabric/sdk/android/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/d;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/d;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/d;)V
    .locals 0
    .param p1, "this$0"    # Lio/fabric/sdk/android/d;

    .prologue
    .line 366
    iput-object p1, p0, Lio/fabric/sdk/android/d$1;->a:Lio/fabric/sdk/android/d;

    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 370
    iget-object v0, p0, Lio/fabric/sdk/android/d$1;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->a(Landroid/app/Activity;)Lio/fabric/sdk/android/d;

    .line 371
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 380
    iget-object v0, p0, Lio/fabric/sdk/android/d$1;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->a(Landroid/app/Activity;)Lio/fabric/sdk/android/d;

    .line 381
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 375
    iget-object v0, p0, Lio/fabric/sdk/android/d$1;->a:Lio/fabric/sdk/android/d;

    invoke-virtual {v0, p1}, Lio/fabric/sdk/android/d;->a(Landroid/app/Activity;)Lio/fabric/sdk/android/d;

    .line 376
    return-void
.end method
