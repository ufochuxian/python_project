.class public Lcom/jiliguala/niuwa/module/story/views/book/CoverView;
.super Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mImageView:Landroid/widget/ImageView;

.field private final mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/json/Cover;Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "artworkManager"    # Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
    .param p3, "cover"    # Lcom/jiliguala/niuwa/module/story/data/json/Cover;
    .param p4, "readingExperienceManager"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .param p5, "kind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    .line 32
    invoke-direct {p0, p1, p5}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    .line 33
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 35
    const v6, 0x7f090181

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->mImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->mImageView:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getCoverArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v6

    new-instance v7, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;

    invoke-direct {v7, p0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView$1;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/CoverView;Landroid/app/Activity;)V

    invoke-virtual {p2, v6, v7}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 52
    :cond_0
    const v6, 0x7f09052b

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 53
    .local v4, "storyLengthTv":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getStoryLength()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    const v6, 0x7f090527

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, "storyAuthorTv":Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 59
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getStoryAuthor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_2
    const v6, 0x7f09052c

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 63
    .local v5, "storyLevelTv":Landroid/widget/TextView;
    if-eqz v5, :cond_3

    .line 64
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getStoryLevel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_3
    const v6, 0x7f09052a

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    .local v3, "storyIllUstratorTv":Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {p3}, Lcom/jiliguala/niuwa/module/story/data/json/Cover;->getStoryIllustrator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_4
    const v6, 0x7f090097

    invoke-virtual {p0, v6}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "backgroundView":Landroid/view/View;
    if-eqz v0, :cond_5

    .line 74
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v1

    .line 75
    .local v1, "screenSize":Landroid/graphics/Point;
    const/high16 v6, -0x10000

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 76
    iget v6, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeStoryPageGradient(FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/jiliguala/niuwa/module/story/helpers/CompatibilityHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 78
    .end local v1    # "screenSize":Landroid/graphics/Point;
    :cond_5
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/views/book/CoverView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/CoverView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected getLeftLayout()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f0b015c

    return v0
.end method

.method protected getPortraitLayout()I
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0b015b

    return v0
.end method

.method protected getRightLayout()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0b015b

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 106
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->onDetach()V

    .line 98
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/CoverView;->recycle(Landroid/widget/ImageView;)V

    .line 99
    return-void
.end method
