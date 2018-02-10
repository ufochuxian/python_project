.class public Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

.field public b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;)V
    .locals 0
    .param p1, "edge1"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;
    .param p2, "edge2"    # Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->a:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 30
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/a;->b:Lcom/jiliguala/niuwa/common/widget/cropper/cropwindow/edge/Edge;

    .line 31
    return-void
.end method
