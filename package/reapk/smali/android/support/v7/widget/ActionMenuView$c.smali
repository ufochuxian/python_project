.class public Landroid/support/v7/widget/ActionMenuView$c;
.super Landroid/support/v7/widget/LinearLayoutCompat$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public b:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public c:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public d:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public e:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field f:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 841
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$b;-><init>(II)V

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$c;->a:Z

    .line 843
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .prologue
    .line 846
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$b;-><init>(II)V

    .line 847
    iput-boolean p3, p0, Landroid/support/v7/widget/ActionMenuView$c;->a:Z

    .line 848
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 828
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 829
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView$c;)V
    .locals 1
    .param p1, "other"    # Landroid/support/v7/widget/ActionMenuView$c;

    .prologue
    .line 836
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    iget-boolean v0, p1, Landroid/support/v7/widget/ActionMenuView$c;->a:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView$c;->a:Z

    .line 838
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 832
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    return-void
.end method