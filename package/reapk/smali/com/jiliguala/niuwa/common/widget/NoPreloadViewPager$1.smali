.class final Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;)I
    .locals 2
    .param p1, "lhs"    # Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;
    .param p2, "rhs"    # Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    .prologue
    .line 83
    iget v0, p1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    iget v1, p2, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    check-cast p2, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;

    invoke-virtual {p0, p1, p2}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;->a(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$a;)I

    move-result v0

    return v0
.end method
