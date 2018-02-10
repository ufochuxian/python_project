.class Landroid/support/v7/widget/q$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/support/v7/widget/RecyclerView$w;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$w;IIII)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$w;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/support/v7/widget/q$b;->a:Landroid/support/v7/widget/RecyclerView$w;

    .line 59
    iput p2, p0, Landroid/support/v7/widget/q$b;->b:I

    .line 60
    iput p3, p0, Landroid/support/v7/widget/q$b;->c:I

    .line 61
    iput p4, p0, Landroid/support/v7/widget/q$b;->d:I

    .line 62
    iput p5, p0, Landroid/support/v7/widget/q$b;->e:I

    .line 63
    return-void
.end method
