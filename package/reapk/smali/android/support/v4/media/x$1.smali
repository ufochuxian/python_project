.class Landroid/support/v4/media/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/y$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/x;->d()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/media/x;


# direct methods
.method constructor <init>(Landroid/support/v4/media/x;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/media/x;

    .prologue
    .line 172
    iput-object p1, p0, Landroid/support/v4/media/x$1;->a:Landroid/support/v4/media/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .param p1, "volume"    # I

    .prologue
    .line 176
    iget-object v0, p0, Landroid/support/v4/media/x$1;->a:Landroid/support/v4/media/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/x;->b(I)V

    .line 177
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/v4/media/x$1;->a:Landroid/support/v4/media/x;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/x;->c(I)V

    .line 182
    return-void
.end method
