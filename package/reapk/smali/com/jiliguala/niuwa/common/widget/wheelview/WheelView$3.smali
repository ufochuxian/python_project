.class Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->setSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;->b:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iput p2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;->b:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;->a:I

    iget-object v3, p0, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView$3;->b:Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;

    iget v3, v3, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->j:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/wheelview/WheelView;->smoothScrollTo(II)V

    .line 301
    return-void
.end method
