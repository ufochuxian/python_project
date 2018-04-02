.class public Lcom/jiliguala/niuwa/module/story/views/book/PageView;
.super Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;


# static fields
.field private static final SPOTLIGHT_COLOR:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

.field private mChineseMode:Z

.field private final mImageView:Landroid/widget/ImageView;
    .annotation build Lorg/b/a/e;
    .end annotation
.end field

.field private final mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

.field private mSpotlightEngine:Ljava/lang/Runnable;

.field private final mStoryPage:Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

.field private mText:Ljava/lang/String;

.field private final mTextView:Landroid/widget/TextView;

.field private final mTranslateBtn:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-class v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->TAG:Ljava/lang/String;

    .line 42
    const/16 v0, 0xff

    const/16 v1, 0x2f

    const/16 v2, 0xca

    const/16 v3, 0x89

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->SPOTLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;FLcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "storyPage"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    .param p3, "artworkManager"    # Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;
    .param p4, "audioManager"    # Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .param p5, "textScale"    # F
    .param p6, "readingExperienceManager"    # Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .param p7, "layoutKind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    .line 57
    move-object/from16 v0, p7

    invoke-static {p2, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->getKind(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)V

    .line 58
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mStoryPage:Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    .line 59
    iput-object p4, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    .line 60
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    .line 62
    const v7, 0x7f0903c0

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mImageView:Landroid/widget/ImageView;

    .line 63
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mImageView:Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 67
    move-object/from16 v0, p7

    invoke-static {p2, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->isLeftSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 68
    check-cast v7, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->getLeftArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    .line 74
    .local v1, "artwork":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    :goto_0
    new-instance v7, Lcom/jiliguala/niuwa/module/story/views/book/PageView$1;

    invoke-direct {v7, p0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView$1;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Landroid/app/Activity;)V

    invoke-virtual {p3, v1, v7}, Lcom/jiliguala/niuwa/module/story/data/ArtworkManager;->get(Lcom/jiliguala/niuwa/module/story/data/internal/Asset;Lcom/jiliguala/niuwa/module/story/data/live/LiveDataListener;)V

    .line 88
    .end local v1    # "artwork":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    :cond_0
    const v7, 0x7f0905bc

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTranslateBtn:Landroid/view/View;

    .line 89
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTranslateBtn:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setPressed(Z)V

    .line 90
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTranslateBtn:Landroid/view/View;

    new-instance v8, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;

    invoke-direct {v8, p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView$2;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    const v7, 0x7f0903c4

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    .line 115
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_9

    .line 118
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 119
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_1

    .line 120
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    const v9, 0x7f070115

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v9, p5

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    :cond_1
    move-object/from16 v0, p7

    invoke-static {p2, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->isLeftSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, p2

    .line 124
    check-cast v7, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    invoke-virtual {v7}, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;->getLeftText()Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "text":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 126
    const-string v7, "\\s+$"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 128
    :cond_2
    iput-object v6, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    .line 133
    .end local v6    # "text":Ljava/lang/String;
    :goto_1
    sget-object v7, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    move-object/from16 v0, p7

    if-ne v0, v7, :cond_3

    invoke-static {p2}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->isSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    const/4 v7, 0x1

    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 134
    .local v5, "shouldShowText":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 135
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v5    # "shouldShowText":Ljava/lang/Boolean;
    :goto_3
    const v7, 0x7f090097

    invoke-virtual {p0, v7}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "backgroundView":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 163
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->getScreenSize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v4

    .line 164
    .local v4, "screenSize":Landroid/graphics/Point;
    const/high16 v7, -0x10000

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    iget v7, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    iget v8, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/jiliguala/niuwa/module/story/helpers/LayoutHelper;->makeStoryPageGradient(FF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/jiliguala/niuwa/module/story/helpers/CompatibilityHelper;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 168
    .end local v4    # "screenSize":Landroid/graphics/Point;
    :cond_4
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v7, p0}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->addListener(Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager$StoryAudioPlaybackListener;)V

    .line 169
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->startSpotlighting()V

    .line 171
    return-void

    .line 70
    .end local v2    # "backgroundView":Landroid/view/View;
    :cond_5
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getArtwork()Lcom/jiliguala/niuwa/module/story/data/internal/Asset;

    move-result-object v1

    .restart local v1    # "artwork":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    goto/16 :goto_0

    .line 130
    .end local v1    # "artwork":Lcom/jiliguala/niuwa/module/story/data/internal/Asset;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :cond_6
    invoke-virtual {p2}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getText()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    goto :goto_1

    .line 133
    :cond_7
    const/4 v7, 0x0

    goto :goto_2

    .line 147
    .restart local v5    # "shouldShowText":Ljava/lang/Boolean;
    :cond_8
    iget-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 158
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v5    # "shouldShowText":Ljava/lang/Boolean;
    :cond_9
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mChineseMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mChineseMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTranslateBtn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/jiliguala/niuwa/module/story/views/book/PageView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mStoryPage:Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/jiliguala/niuwa/module/story/views/book/PageView;)Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/story/views/book/PageView;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mReadingExperienceManager:Lcom/jiliguala/niuwa/module/story/data/ReadingExperienceManager;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->SPOTLIGHT_COLOR:I

    return v0
.end method

.method private static getKind(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;
    .locals 1
    .param p0, "storyPage"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    .param p1, "layoutKind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    .line 178
    invoke-static {p0, p1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->isLeftSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    sget-object p1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .line 183
    .end local p1    # "layoutKind":Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;
    :cond_0
    return-object p1
.end method

.method private static isLeftSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;)Z
    .locals 1
    .param p0, "storyPage"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;
    .param p1, "layoutKind"    # Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .prologue
    .line 191
    invoke-static {p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->isSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSpread(Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;)Z
    .locals 1
    .param p0, "storyPage"    # Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    .prologue
    .line 187
    instance-of v0, p0, Lcom/jiliguala/niuwa/module/story/data/internal/SpreadStoryPage;

    return v0
.end method


# virtual methods
.method protected getLeftLayout()I
    .locals 1

    .prologue
    .line 196
    const v0, 0x7f0b0163

    return v0
.end method

.method protected getPortraitLayout()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f0b0162

    return v0
.end method

.method protected getRightLayout()I
    .locals 1

    .prologue
    .line 201
    const v0, 0x7f0b0163

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 384
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->recycle(Landroid/widget/ImageView;)V

    .line 355
    invoke-super {p0}, Lcom/jiliguala/niuwa/module/story/views/book/BasePageView;->onDetach()V

    .line 356
    return-void
.end method

.method public onStoryAudioPlaybackCancelled(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 1
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->stopSpotlighting(Z)V

    .line 376
    return-void
.end method

.method public onStoryAudioPlaybackComplete(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 371
    return-void
.end method

.method public onStoryAudioPlaybackStarted(Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;)V
    .locals 0
    .param p1, "page"    # Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->startSpotlighting()V

    .line 366
    return-void
.end method

.method public startSpotlighting()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mAudioManager:Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/StoryAudioManager;->getPlayingPage()Lcom/jiliguala/niuwa/module/story/data/internal/PlayablePage;

    move-result-object v1

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mStoryPage:Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    if-eq v1, v2, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mStoryPage:Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/module/story/data/json/StoryPage;->getSpotlightInstructions()[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;

    move-result-object v0

    .line 221
    .local v0, "instructions":[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;

    invoke-direct {v1, p0, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView$3;-><init>(Lcom/jiliguala/niuwa/module/story/views/book/PageView;[Lcom/jiliguala/niuwa/module/story/data/internal/SpotlightInstruction;)V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mSpotlightEngine:Ljava/lang/Runnable;

    .line 336
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mSpotlightEngine:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stopSpotlighting(Z)V
    .locals 2
    .param p1, "clearSpotlight"    # Z

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mSpotlightEngine:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mSpotlightEngine:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mSpotlightEngine:Ljava/lang/Runnable;

    .line 345
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/views/book/PageView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_1
    return-void
.end method
