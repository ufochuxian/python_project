.class Landroid/support/v4/media/s$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/s;


# direct methods
.method constructor <init>(Landroid/support/v4/media/s;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/s;

    .prologue
    .line 190
    iput-object p1, p0, Landroid/support/v4/media/s$2;->a:Landroid/support/v4/media/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/support/v4/media/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/s$2;->a:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/v;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 203
    invoke-static {p1}, Landroid/support/v4/media/s;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/s$2;->a:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/v;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
