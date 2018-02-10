.class Landroid/support/v4/media/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/u;


# direct methods
.method constructor <init>(Landroid/support/v4/media/u;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/u;

    .prologue
    .line 55
    iput-object p1, p0, Landroid/support/v4/media/u$2;->a:Landroid/support/v4/media/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/u$2;->a:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->d()V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/u$2;->a:Landroid/support/v4/media/u;

    invoke-virtual {v0}, Landroid/support/v4/media/u;->j()V

    goto :goto_0
.end method
