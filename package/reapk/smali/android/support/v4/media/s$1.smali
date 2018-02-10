.class Landroid/support/v4/media/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/t;


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
    .line 63
    iput-object p1, p0, Landroid/support/v4/media/s$1;->a:Landroid/support/v4/media/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/media/s$1;->a:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0}, Landroid/support/v4/media/v;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/media/s$1;->a:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/v;->a(I)V

    .line 71
    return-void
.end method

.method public a(J)V
    .locals 1
    .param p1, "newPositionMs"    # J

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/media/s$1;->a:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->b:Landroid/support/v4/media/v;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/v;->a(J)V

    .line 81
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "key"    # Landroid/view/KeyEvent;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/support/v4/media/s$1;->a:Landroid/support/v4/media/s;

    iget-object v0, v0, Landroid/support/v4/media/s;->t:Landroid/view/KeyEvent$Callback;

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    .line 67
    return-void
.end method
