.class Landroid/support/v7/widget/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/u;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/u;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/u;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/u;

    .prologue
    .line 93
    iput-object p1, p0, Landroid/support/v7/widget/u$1;->a:Landroid/support/v7/widget/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v0, p0, Landroid/support/v7/widget/u$1;->a:Landroid/support/v7/widget/u;

    invoke-static {v0}, Landroid/support/v7/widget/u;->a(Landroid/support/v7/widget/u;)V

    .line 100
    return-void
.end method
