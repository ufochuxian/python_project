.class public Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mChosenAnswers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCorrectAnswers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItemNumPerResult:I

.field private mPossibleResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResultCount:I

.field private mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

.field private final mTabSoundId:I

.field private mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

.field private mTapWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;)V
    .locals 2
    .param p1, "tapView"    # Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;
    .param p2, "widget"    # Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    .line 37
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;->resultCount:I

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mResultCount:I

    .line 38
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    iget v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;->resultItemNum:I

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mItemNumPerResult:I

    .line 39
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;->resultMapping:Ljava/util/Map;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mPossibleResultMap:Ljava/util/Map;

    .line 41
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapWidget:Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/network/http/entity/TapWidget;->correctAnswers:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mCorrectAnswers:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Lcom/jiliguala/niuwa/logic/n/a;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

    invoke-interface {v1}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    .line 45
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->a(I)I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTabSoundId:I

    .line 46
    return-void
.end method

.method private addItemToResultList(Ljava/lang/String;I)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "childIndex"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method private checkResultList()V
    .locals 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, "size":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mItemNumPerResult:I

    if-ne v2, v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mPossibleResultMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

    const-string v3, "default"

    invoke-interface {v2, v3}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;->onMatchResult(Ljava/lang/String;)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->getMatchedResultJumpId()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "jumpId":Ljava/lang/String;
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTapView:Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "jumpId":Ljava/lang/String;
    :goto_1
    invoke-interface {v2, v0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/ITapView;->onMatchResult(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "jumpId":Ljava/lang/String;
    :cond_2
    const-string v0, "default"

    goto :goto_1
.end method

.method private getMatchedResultJumpId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mPossibleResultMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 124
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz v1, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 126
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 127
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    .line 128
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 133
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v2    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeItemFromResultList(Ljava/lang/String;I)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "childIndex"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method


# virtual methods
.method public onTapItem(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "childIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->removeItemFromResultList(Ljava/lang/String;I)V

    .line 118
    :goto_0
    return v1

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mChosenAnswers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 112
    .local v0, "itemSize":I
    iget v2, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mItemNumPerResult:I

    if-ge v0, v2, :cond_1

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->addItemToResultList(Ljava/lang/String;I)V

    .line 114
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->checkResultList()V

    .line 115
    const/4 v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->checkResultList()V

    goto :goto_0
.end method

.method public playTabMusic()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    iget v1, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mTabSoundId:I

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/logic/n/a;->b(I)V

    .line 95
    :cond_0
    return-void
.end method

.method public releaseSoundRes()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/interact/course/viewwidget/tap/TapViewCtrlr;->mSoundPoolWrapper:Lcom/jiliguala/niuwa/logic/n/a;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/logic/n/a;->a()V

    .line 89
    :cond_0
    return-void
.end method
