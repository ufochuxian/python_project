.class Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->a:I

    iput p3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v2, v2, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->g:I

    iget v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->a:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iget-object v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->smoothScrollTo(II)V

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->b:I

    iget-object v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iget-object v2, v2, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v2, v2, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->c:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->f:I

    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1$1;->c:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;

    iget-object v0, v0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$1;->a:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->a(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;)V

    .line 126
    return-void
.end method
