.class Lcom/nineoldandroids/b/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:F


# direct methods
.method constructor <init>(IFF)V
    .locals 0
    .param p1, "nameConstant"    # I
    .param p2, "fromValue"    # F
    .param p3, "deltaValue"    # F

    .prologue
    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iput p1, p0, Lcom/nineoldandroids/b/e$b;->a:I

    .line 613
    iput p2, p0, Lcom/nineoldandroids/b/e$b;->b:F

    .line 614
    iput p3, p0, Lcom/nineoldandroids/b/e$b;->c:F

    .line 615
    return-void
.end method
