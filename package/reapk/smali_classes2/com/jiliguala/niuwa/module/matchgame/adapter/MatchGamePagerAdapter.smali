.class public Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;
.super Landroid/support/v4/app/ak;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFm:Landroid/support/v4/app/ag;

.field private mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

.field private questions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/ag;)V
    .locals 1
    .param p1, "fm"    # Landroid/support/v4/app/ag;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v4/app/ak;-><init>(Landroid/support/v4/app/ag;)V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->mFm:Landroid/support/v4/app/ag;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->mFm:Landroid/support/v4/app/ag;

    const v2, 0x7f09031b

    invoke-static {v1, v2, p1}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->findOrCreateFragment(Landroid/support/v4/app/ag;II)Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;

    move-result-object v0

    .line 43
    .local v0, "fragment":Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->setData(Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/matchgame/fragment/MatchGameItemFragment;->setInterface(Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;)V

    .line 49
    :cond_1
    return-object v0
.end method

.method public setInterface(Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;)V
    .locals 0
    .param p1, "mMatchInterface"    # Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->mMatchInterface:Lcom/jiliguala/niuwa/module/matchgame/listener/MatchInterface;

    .line 62
    return-void
.end method

.method public updateData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/jiliguala/niuwa/logic/network/json/MatchGameTemplate$QuestionsPart;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 32
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/matchgame/adapter/MatchGamePagerAdapter;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 34
    :cond_0
    return-void
.end method
