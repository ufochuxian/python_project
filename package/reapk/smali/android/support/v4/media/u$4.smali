.class Landroid/support/v4/media/u$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 74
    iput-object p1, p0, Landroid/support/v4/media/u$4;->a:Landroid/support/v4/media/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 77
    iget-object v0, p0, Landroid/support/v4/media/u$4;->a:Landroid/support/v4/media/u;

    iget-object v0, v0, Landroid/support/v4/media/u;->d:Landroid/support/v4/media/t;

    invoke-interface {v0, p1}, Landroid/support/v4/media/t;->a(I)V

    .line 78
    return-void
.end method
