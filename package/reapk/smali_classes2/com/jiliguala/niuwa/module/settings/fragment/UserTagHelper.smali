.class public Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mRightMarginOfTag:I

.field tag_height:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$a;->a:Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;

    return-object v0
.end method

.method private loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "tagUrl"    # Ljava/lang/String;
    .param p2, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 73
    invoke-static {}, Lcom/nostra13/universalimageloader/core/d;->b()Lcom/nostra13/universalimageloader/core/d;

    move-result-object v0

    invoke-static {}, Lcom/jiliguala/niuwa/logic/e/a;->a()Lcom/jiliguala/niuwa/logic/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/e/a;->l()Lcom/nostra13/universalimageloader/core/c;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;

    invoke-direct {v2, p0}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;)V

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/d;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/d/a;)V

    .line 112
    return-void
.end method


# virtual methods
.method public updateUserTags(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 9
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tagContainer"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "lastTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 36
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700c2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->tag_height:I

    .line 41
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070147

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->mRightMarginOfTag:I

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 44
    .local v2, "size":I
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 45
    .local v5, "viewSize":I
    if-eqz v2, :cond_5

    .line 46
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v5, v2, :cond_4

    .line 47
    :cond_2
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 48
    invoke-virtual {p4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 50
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 52
    .local v4, "tagUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, "iv":Landroid/widget/ImageView;
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setId(I)V

    .line 57
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    iget v7, p0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->tag_height:I

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 58
    .local v3, "tagLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v6, p0, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->mRightMarginOfTag:I

    invoke-virtual {v3, v8, v8, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 59
    invoke-virtual {p4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-direct {p0, v4, v1}, Lcom/jiliguala/niuwa/module/settings/fragment/UserTagHelper;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2

    .line 64
    .end local v0    # "index":I
    .end local v1    # "iv":Landroid/widget/ImageView;
    .end local v3    # "tagLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "tagUrl":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 65
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 68
    const/16 v6, 0x8

    invoke-virtual {p4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
