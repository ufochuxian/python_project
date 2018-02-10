.class public Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;
.super Landroid/support/v4/app/am;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public fragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;",
            ">;"
        }
    .end annotation
.end field

.field private isFlashCard:Z

.field private isNeedBottomBarPlaceHolder:Z

.field private mBgColorId:I

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFm:Landroid/support/v4/app/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v4/app/am;-><init>(Landroid/support/v4/app/ag;)V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->fragments:Ljava/util/HashMap;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->isFlashCard:Z

    .line 34
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mFm:Landroid/support/v4/app/ag;

    .line 35
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/am;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->fragments:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public getBgColorId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mBgColorId:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDataModel(I)Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v4, v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->pic:Ljava/lang/String;

    .line 69
    .local v4, "pic":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v5, v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->word:Ljava/lang/String;

    .line 70
    .local v5, "word":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v1, v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->cword:Ljava/lang/String;

    .line 71
    .local v1, "cword":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v0, v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->clr:Ljava/lang/String;

    .line 72
    .local v0, "color":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;

    iget-object v3, v6, Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;->_id:Ljava/lang/String;

    .line 73
    .local v3, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mFm:Landroid/support/v4/app/ag;

    const v7, 0x7f09020b

    invoke-static {v6, v7, p1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    move-result-object v2

    .line 74
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setSententceId(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2, v4}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setPicUrl(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2, v5}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setWord(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v1}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setCWord(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setColor(Ljava/lang/String;)V

    .line 80
    iget v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mBgColorId:I

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setBgColor(I)V

    .line 81
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->isFlashCard:Z

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setFlashCard(Z)V

    .line 82
    iget-boolean v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->isNeedBottomBarPlaceHolder:Z

    invoke-virtual {v2, v6}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->setNeedBottomBarPlaceHolder(Z)V

    .line 84
    :cond_0
    iget-object v6, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->fragments:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-object v2
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 121
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/am;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isFlashCard()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->isFlashCard:Z

    return v0
.end method

.method public setBgColorId(I)V
    .locals 0
    .param p1, "bgColorId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mBgColorId:I

    .line 130
    return-void
.end method

.method public setFlashCard(Z)V
    .locals 0
    .param p1, "flashCard"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->isFlashCard:Z

    .line 138
    return-void
.end method

.method public setFragments(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "fragments":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;>;"
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->fragments:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    .line 104
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mFm:Landroid/support/v4/app/ag;

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->a()Landroid/support/v4/app/an;

    move-result-object v3

    .line 105
    .local v3, "ft":Landroid/support/v4/app/an;
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 106
    .local v0, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;

    .line 108
    .local v2, "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v3, v2}, Landroid/support/v4/app/an;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/an;

    goto :goto_0

    .line 112
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;>;"
    .end local v2    # "fragment":Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;
    :cond_1
    invoke-virtual {v3}, Landroid/support/v4/app/an;->i()I

    .line 113
    iget-object v4, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mFm:Landroid/support/v4/app/ag;

    invoke-virtual {v4}, Landroid/support/v4/app/ag;->c()Z

    .line 115
    .end local v0    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/jiliguala/niuwa/module/speak/ParentSpeakItemFragment;>;>;"
    .end local v3    # "ft":Landroid/support/v4/app/an;
    :cond_2
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->fragments:Ljava/util/HashMap;

    .line 116
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method

.method public setNeedBottomBarPlaceHolder(Z)V
    .locals 0
    .param p1, "needBottomBarPlaceHolder"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->isNeedBottomBarPlaceHolder:Z

    .line 142
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/FlashCardModel;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->mData:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->fragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 49
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/speak/ParentSpeakAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method
