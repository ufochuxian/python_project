.class Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# static fields
.field static final a:F = 0.0f

.field static final b:F = 1.0f

.field static final c:F


# instance fields
.field final d:Landroid/view/ViewGroup;

.field final e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

.field final f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

.field final g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

.field h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

.field i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

.field j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

.field final synthetic k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;Landroid/view/ViewGroup;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
    .locals 2
    .param p2, "holder"    # Landroid/view/ViewGroup;
    .param p3, "kind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    .line 631
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    .line 633
    iput-object p3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .line 635
    new-instance v0, Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/story/views/ShadowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    .line 636
    new-instance v0, Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/module/story/views/ShadowView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    .line 638
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->fillRelativeLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 639
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->fillRelativeLayout()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .param p2, "visibility"    # F

    .prologue
    .line 669
    if-nez p1, :cond_0

    .line 677
    :goto_0
    return-void

    .line 671
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 672
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 674
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 675
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Lorg/b/a/e;
        .end annotation
    .end param
    .param p2, "visibility"    # F
    .param p3, "rotation"    # F

    .prologue
    .line 680
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    .line 683
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 685
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 686
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5a

    :goto_1
    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    :cond_2
    const/16 v0, -0x5a

    goto :goto_1
.end method

.method private a(Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;)V
    .locals 6
    .param p1, "pageView"    # Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .prologue
    .line 876
    if-nez p1, :cond_0

    .line 903
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    .line 881
    .local v1, "pageHeight":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    .line 885
    .local v2, "pageWidth":I
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$1100(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->shouldPillarbox()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 886
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f290ff9    # 0.6604f

    mul-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 890
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 891
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 892
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 894
    :cond_2
    invoke-virtual {p1, v0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 899
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->setCameraDistance(F)V

    .line 901
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->setPivotY(F)V

    .line 902
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    int-to-float v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->setPivotX(F)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 644
    .local v0, "views":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;>;"
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_0

    .line 645
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_2

    .line 649
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_2
    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 859
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 860
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ID"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getStoryId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    const-string v1, "Title"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getStoryTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Read Ending View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 863
    return-void
.end method

.method private d(I)Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    .locals 9
    .param p1, "index"    # I

    .prologue
    .line 826
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPage(I)Lcom/jiliguala/niuwa/module/story/data/internal/Page;

    move-result-object v8

    .line 830
    .local v8, "page":Lcom/jiliguala/niuwa/module/story/data/internal/Page;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    iget v1, v1, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->index:I

    if-ne v1, p1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 855
    :goto_0
    return-object v0

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    iget v1, v1, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->index:I

    if-ne v1, p1, :cond_1

    .line 833
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    goto :goto_0

    .line 834
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    iget v1, v1, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->index:I

    if-ne v1, p1, :cond_2

    .line 835
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    goto :goto_0

    .line 841
    :cond_2
    instance-of v1, v8, Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    if-eqz v1, :cond_3

    .line 842
    new-instance v0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$700(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    move-result-object v2

    move-object v3, v8

    check-cast v3, Lcom/jiliguala/niuwa/module/story/data/json/Cover;

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-direct/range {v0 .. v5}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;-><init>(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/json/Cover;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    .line 853
    .local v0, "pageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :goto_1
    iput p1, v0, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->index:I

    .line 854
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;)V

    goto :goto_0

    .line 843
    .end local v0    # "pageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :cond_3
    instance-of v1, v8, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    if-eqz v1, :cond_4

    .line 844
    new-instance v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v2, v8

    check-cast v2, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$700(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    move-result-object v3

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$800(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$900(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)F

    move-result v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-direct/range {v0 .. v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;-><init>(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;FLcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    .restart local v0    # "pageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    goto :goto_1

    .line 845
    .end local v0    # "pageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :cond_4
    instance-of v1, v8, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    if-eqz v1, :cond_5

    .line 846
    new-instance v0, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->getReaderBaseActivity()Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$1000(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/android/volley/toolbox/k;

    move-result-object v2

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$700(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;

    move-result-object v3

    move-object v4, v8

    check-cast v4, Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;

    iget-object v5, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-direct/range {v0 .. v6}, Lcom/jiliguala/niuwa/module/story/views/book/PostStoryPageView;-><init>(Lcom/jiliguala/niuwa/module/story/StoryBaseActivity;Lcom/android/volley/toolbox/k;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/internal/PostStoryPage;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    .restart local v0    # "pageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    goto :goto_1

    .line 850
    .end local v0    # "pageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t know how to make a page view for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 906
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;)V

    .line 656
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;)V

    .line 657
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;)V

    .line 658
    return-void
.end method

.method public a(F)V
    .locals 8
    .param p1, "fraction"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 693
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->e:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    sget-object v2, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    if-ne v1, v2, :cond_0

    .line 696
    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    .line 699
    :cond_0
    float-to-double v2, p1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    .line 701
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v7, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;FF)V

    .line 702
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 703
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 704
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 705
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 730
    :goto_0
    return-void

    .line 706
    :cond_1
    cmpl-float v1, p1, v6

    if-lez v1, :cond_2

    .line 708
    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, p1, v1

    .line 709
    .local v0, "progress":F
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v7, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;FF)V

    .line 710
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    sub-float v2, v7, v0

    invoke-direct {p0, v1, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 711
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v7, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;FF)V

    .line 712
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 713
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 714
    .end local v0    # "progress":F
    :cond_2
    float-to-double v2, p1

    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    .line 716
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 717
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 718
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v7, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;FF)V

    .line 719
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 720
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 723
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p1

    const/high16 v2, -0x40000000    # -2.0f

    mul-float v0, v1, v2

    .line 724
    .restart local v0    # "progress":F
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 725
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 726
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-direct {p0, v1, v7, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;FF)V

    .line 727
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-direct {p0, v1, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;F)V

    .line 728
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    sub-float v2, v7, v0

    invoke-direct {p0, v1, v7, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->a(Landroid/view/View;FF)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 742
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d(I)Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    move-result-object v0

    .line 743
    .local v0, "destinationPageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eq v1, v0, :cond_1

    .line 745
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 747
    :cond_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 748
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 750
    :cond_1
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 663
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 664
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 665
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 666
    return-void
.end method

.method public b(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d(I)Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    move-result-object v0

    .line 758
    .local v0, "destinationPageView":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eq v1, v0, :cond_1

    .line 760
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v1, :cond_0

    .line 761
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 762
    :cond_0
    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 763
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 765
    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 11
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 769
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$400(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;->getPageCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne p1, v8, :cond_0

    .line 770
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v8}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$500(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;)V

    .line 771
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->c()V

    .line 774
    :cond_0
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->b()Ljava/util/Set;

    move-result-object v5

    .line 776
    .local v5, "oldViews":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;>;"
    const/4 v1, 0x0

    .line 777
    .local v1, "newBottom":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    const/4 v3, 0x0

    .line 779
    .local v3, "newTop":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d()Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_0
    add-int v0, p1, v8

    .line 780
    .local v0, "bottomPage":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v8, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$600(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 781
    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d(I)Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    move-result-object v1

    .line 784
    :cond_1
    invoke-direct {p0, p1}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d(I)Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    move-result-object v2

    .line 786
    .local v2, "newCurrent":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_1
    add-int v6, p1, v10

    .line 787
    .local v6, "topPage":I
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->k:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;

    invoke-static {v8, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;->access$600(Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 788
    invoke-direct {p0, v6}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d(I)Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    move-result-object v3

    .line 791
    :cond_2
    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->j:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 792
    iput-object v2, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 793
    iput-object v3, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 796
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->b()Ljava/util/Set;

    move-result-object v4

    .line 800
    .local v4, "newViews":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 801
    .local v7, "view":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 802
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 803
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->onDetach()V

    goto :goto_2

    .end local v0    # "bottomPage":I
    .end local v2    # "newCurrent":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    .end local v4    # "newViews":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;>;"
    .end local v6    # "topPage":I
    .end local v7    # "view":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :cond_4
    move v8, v10

    .line 779
    goto :goto_0

    .restart local v0    # "bottomPage":I
    .restart local v2    # "newCurrent":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :cond_5
    move v10, v9

    .line 786
    goto :goto_1

    .line 809
    .restart local v4    # "newViews":Ljava/util/Set;, "Ljava/util/Set<Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;>;"
    .restart local v6    # "topPage":I
    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    .line 810
    .restart local v7    # "view":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 811
    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->onAttach()V

    .line 812
    iget-object v9, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->d:Landroid/view/ViewGroup;

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 817
    .end local v7    # "view":Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
    :cond_8
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->f:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/story/views/ShadowView;->bringToFront()V

    .line 818
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v8, :cond_9

    .line 819
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->i:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->bringToFront()V

    .line 820
    :cond_9
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->g:Lcom/jiliguala/niuwa/module/story/views/ShadowView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/story/views/ShadowView;->bringToFront()V

    .line 821
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    if-eqz v8, :cond_a

    .line 822
    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$a;->h:Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;

    invoke-virtual {v8}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->bringToFront()V

    .line 823
    :cond_a
    return-void
.end method
