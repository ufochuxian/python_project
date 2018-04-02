.class public Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private all:Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

.field private currentGraphs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private lastClickedCard:Landroid/view/View;

.field private lastClickedFace:Landroid/view/View;

.field private mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

.field private notifyPopup:Landroid/widget/PopupWindow;

.field private question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

.field vog:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->currentGraphs:Ljava/util/List;

    .line 55
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;

    invoke-direct {v0, p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$1;-><init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->vog:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->all:Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->lastClickedCard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->lastClickedCard:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->lastClickedFace:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->lastClickedFace:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    return-object v0
.end method

.method static synthetic access$400(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->disableCurrentGraphs()V

    return-void
.end method

.method static synthetic access$600(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private disableCurrentGraphs()V
    .locals 3

    .prologue
    .line 220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->currentGraphs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 221
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->currentGraphs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 222
    .local v0, "graph":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 223
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "graph":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public static findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    .locals 2
    .param p0, "fm"    # Landroid/support/v4/app/ag;
    .param p1, "viewId"    # I
    .param p2, "position"    # I

    .prologue
    .line 83
    invoke-static {p1, p2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/app/ag;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .line 84
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    .end local v0    # "fragment":Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;-><init>()V

    .line 87
    .restart local v0    # "fragment":Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    :cond_0
    return-object v0
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2
    .param p0, "viewId"    # I
    .param p1, "position"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showPop(Landroid/view/View;Z)V
    .locals 11
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "correctAnswer"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x2

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 229
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 230
    .local v4, "tv":Landroid/widget/TextView;
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600fe

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 232
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07007f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    .line 231
    invoke-virtual {v4, v7, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 233
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    if-eqz p2, :cond_0

    const v5, 0x7f0f008e

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 235
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080126

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 237
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 238
    invoke-virtual {v4, v8, v8, v0, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 239
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v2

    .line 240
    .local v2, "padding":I
    invoke-virtual {v4, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 241
    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060054

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 243
    new-instance v5, Landroid/widget/PopupWindow;

    invoke-direct {v5, v4, v9, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    .line 244
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    const v6, 0x7f1001c5

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 245
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 246
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v10}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 248
    invoke-virtual {v4, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 250
    .local v3, "pwidth":I
    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v1

    .line 251
    .local v1, "margin":I
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v3, v6

    div-int/lit8 v6, v6, 0x2

    neg-int v7, v1

    invoke-virtual {v5, p1, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 253
    new-instance v5, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$4;

    invoke-direct {v5, p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$4;-><init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;)V

    const-wide/16 v6, 0x5dc

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 261
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->notifyPopup:Landroid/widget/PopupWindow;

    new-instance v6, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;

    invoke-direct {v6, p0, p2}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$5;-><init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Z)V

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 273
    return-void

    .line 234
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v1    # "margin":I
    .end local v2    # "padding":I
    .end local v3    # "pwidth":I
    :cond_0
    const v5, 0x7f0f00fd

    goto/16 :goto_0

    .line 236
    :cond_1
    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080116

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_1

    .line 241
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "padding":I
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06009e

    .line 242
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    goto :goto_2
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 16
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 120
    const v13, 0x7f0b0120

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 121
    .local v12, "view":Landroid/view/View;
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->n()I

    move-result v5

    .line 122
    .local v5, "container_h":I
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f07014c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v13

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f070058

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v14

    add-int v11, v13, v14

    .line 124
    .local v11, "total_h":I
    const v13, 0x7f090158

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->all:Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    .line 125
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->all:Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->vog:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v13, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->answers:Ljava/util/ArrayList;

    if-eqz v13, :cond_1

    .line 128
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->answers:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    iget-object v13, v13, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;->answers:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 130
    .local v2, "card":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    const/4 v14, -0x2

    invoke-direct {v7, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 137
    .local v7, "fl":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 138
    .local v3, "cardContainer":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 139
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v13

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-static {v14}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    .line 140
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->h()I

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-static {v15}, Lcom/jiliguala/niuwa/common/util/z;->a(F)I

    move-result v15

    sub-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    invoke-direct {v4, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    .local v4, "cardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xd

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v10, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 144
    .local v10, "smilingFace":Landroid/widget/ImageView;
    const v13, 0x7f0801cc

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v6, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v6, "faceLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v13, 0xe

    const/4 v14, -0x1

    invoke-virtual {v6, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    const/4 v13, 0x3

    const v14, 0x7f090285

    invoke-virtual {v6, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    invoke-virtual {v10}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v13

    new-instance v14, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v10, v6}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$2;-><init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/widget/ImageView;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v13, v14}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 167
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v8, "graph":Landroid/widget/ImageView;
    const v13, 0x7f090285

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setId(I)V

    .line 169
    new-instance v13, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8, v10}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment$3;-><init>(Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v13, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 201
    iget-object v13, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 202
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v2, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?imageMogr2/thumbnail/300x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 204
    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v15

    invoke-virtual {v15}, Lcom/jiliguala/niuwa/logic/e/a;->k()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v15

    .line 202
    invoke-virtual {v13, v14, v8, v15}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;)V

    .line 206
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->currentGraphs:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v3, v8, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    invoke-virtual {v3, v10, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->all:Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;

    invoke-virtual {v13, v3, v7}, Lcom/jiliguala/niuwa/common/widget/autolinearlayout/AutoLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 213
    .end local v2    # "card":Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    .end local v3    # "cardContainer":Landroid/widget/RelativeLayout;
    .end local v4    # "cardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "faceLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v7    # "fl":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "graph":Landroid/widget/ImageView;
    .end local v9    # "index":I
    .end local v10    # "smilingFace":Landroid/widget/ImageView;
    :cond_1
    return-object v12
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 277
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 278
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->currentGraphs:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->currentGraphs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 281
    :cond_0
    return-void
.end method

.method public setData(Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;)V
    .locals 0
    .param p1, "question"    # Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->question:Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    .line 92
    return-void
.end method

.method public setInterface(Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;)V
    .locals 0
    .param p1, "mMatchInterface"    # Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    .line 96
    return-void
.end method
