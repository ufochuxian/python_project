.class Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;


# direct methods
.method private constructor <init>(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;)V
    .locals 0

    .prologue
    .line 1732
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;->a:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;
    .param p2, "x1"    # Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$1;

    .prologue
    .line 1732
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;-><init>(Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;->a:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->b()V

    .line 1737
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager$c;->a:Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/widget/NoPreloadViewPager;->b()V

    .line 1742
    return-void
.end method
