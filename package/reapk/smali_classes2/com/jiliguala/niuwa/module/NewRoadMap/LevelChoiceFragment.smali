.class public Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;
.super Lcom/jiliguala/niuwa/common/base/b;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/c$b;


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLevelInfo:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

.field public mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Lbutterknife/BindView;
        a = 0x7f090437
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mServerLv:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->TAG:Ljava/lang/String;

    .line 52
    const-class v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/common/base/b;-><init>()V

    .line 56
    new-instance v0, Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/common/util/xutils/c;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    return-void
.end method

.method static synthetic access$000(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getCurrent()I

    move-result v0

    return v0
.end method

.method private generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;)Lokhttp3/ab;
    .locals 2
    .param p1, "data"    # Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;

    .prologue
    .line 283
    invoke-static {p1}, Lcom/jiliguala/niuwa/logic/network/e;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "json":Ljava/lang/String;
    invoke-static {v1}, Lcom/jiliguala/niuwa/logic/network/a/b;->a(Ljava/lang/String;)Lokhttp3/ab;

    move-result-object v0

    .line 286
    .local v0, "body":Lokhttp3/ab;
    return-object v0
.end method

.method private getCurrent()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    :goto_0
    :pswitch_0
    return v0

    .line 156
    :cond_0
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    invoke-static {v5}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 157
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mLevelInfo:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 161
    goto :goto_0

    .line 157
    :sswitch_0
    const-string v6, "B1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v0

    goto :goto_1

    :sswitch_1
    const-string v6, "B2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v1

    goto :goto_1

    :sswitch_2
    const-string v6, "Level 1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    goto :goto_1

    :sswitch_3
    const-string v6, "Level 2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    goto :goto_1

    :sswitch_4
    const-string v6, "Level 3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string v6, "Level 4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 163
    goto :goto_0

    :pswitch_3
    move v0, v3

    .line 165
    goto :goto_0

    .line 167
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 169
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 173
    :cond_2
    iget-object v5, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mLevelInfo:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    iget-object v5, v5, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :cond_3
    :goto_2
    packed-switch v4, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 177
    goto :goto_0

    .line 173
    :pswitch_7
    const-string v6, "Level 1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v0

    goto :goto_2

    :pswitch_8
    const-string v6, "Level 2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v1

    goto :goto_2

    :pswitch_9
    const-string v6, "Level 3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v2

    goto :goto_2

    :pswitch_a
    const-string v6, "Level 4"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v4, v3

    goto :goto_2

    :pswitch_b
    move v0, v2

    .line 179
    goto/16 :goto_0

    :pswitch_c
    move v0, v3

    .line 181
    goto/16 :goto_0

    .line 157
    :sswitch_data_0
    .sparse-switch
        0x82f -> :sswitch_0
        0x830 -> :sswitch_1
        0x67616675 -> :sswitch_2
        0x67616676 -> :sswitch_3
        0x67616677 -> :sswitch_4
        0x67616678 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 173
    :pswitch_data_1
    .packed-switch 0x67616675
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 106
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 107
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mType:Ljava/lang/String;

    .line 108
    const-string v1, "server_lv"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    .line 109
    const-string v1, "SOURCE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mSource:Ljava/lang/String;

    .line 111
    :cond_0
    return-void
.end method

.method private isMc()Z
    .locals 2

    .prologue
    .line 188
    const-string v0, "MC"

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private processData()V
    .locals 4

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    .line 78
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getCurrent()I

    move-result v0

    .line 79
    .local v0, "current":I
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "B1MC"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "B1"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "B2MC"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "B2"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L1MC"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv1"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L2MC"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv2"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L3MC"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv3"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L4MC"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv4"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L1PH"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv1"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L2PH"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv2"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L3PH"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv3"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    new-instance v2, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    const-string v3, "L4PH"

    invoke-direct {v2, v3, v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;-><init>(Ljava/lang/String;I)V

    const-string v3, "Lv4"

    invoke-virtual {v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private reportAmplitude()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->isMc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "Type"

    const-string v2, "MC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_0
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Roadmap Change View"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    return-void

    .line 99
    :cond_0
    const-string v1, "Type"

    const-string v2, "Phonics"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private reportClickAmplitude(Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->isMc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :goto_0
    const-string v1, "Source"

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mSource:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v1

    const-string v2, "Roadmap Change Click"

    invoke-virtual {v1, v2, v0}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 280
    return-void

    .line 276
    :cond_0
    const-string v1, "Type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phonics "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setAdapter()V
    .locals 4

    .prologue
    .line 137
    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;

    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mData:Ljava/util/List;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    invoke-static {v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->isMc(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;-><init>(Ljava/util/List;Z)V

    .line 138
    .local v1, "levelAdapter":Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;
    invoke-virtual {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelAdapter;->setOnItemChildClickListener(Lcom/c/a/a/a/c$b;)V

    .line 139
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)V

    .line 141
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 142
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$a;)V

    .line 143
    return-void
.end method

.method private setBg()V
    .locals 3

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->isMc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private switchLevel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "lv"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mClickManager:Lcom/jiliguala/niuwa/common/util/xutils/c;

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/common/util/xutils/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->getLevelInfo(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    move-result-object v0

    .line 203
    .local v0, "levelInfo":Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;
    if-eqz v0, :cond_1

    .line 204
    iget-object v2, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->reportClickAmplitude(Ljava/lang/String;)V

    .line 207
    :cond_1
    new-instance v1, Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;

    invoke-direct {v1}, Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;-><init>()V

    .line 208
    .local v1, "levelTemplete":Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jiliguala/niuwa/logic/login/a;->R()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;->bid:Ljava/lang/String;

    .line 209
    iput-object p1, v1, Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;->lv:Ljava/lang/String;

    .line 210
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getSubscriptions()Lrx/i/b;

    move-result-object v2

    .line 211
    invoke-static {}, Lcom/jiliguala/niuwa/logic/network/g;->a()Lcom/jiliguala/niuwa/logic/network/g;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/network/g;->b()Lcom/jiliguala/niuwa/logic/network/d;

    move-result-object v3

    .line 213
    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->generateRequestBody(Lcom/jiliguala/niuwa/logic/network/json/LevelTemplete;)Lokhttp3/ab;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/jiliguala/niuwa/logic/network/d;->D(Lokhttp3/ab;)Lrx/e;

    move-result-object v3

    .line 214
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->d(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 215
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->g(Lrx/h;)Lrx/e;

    move-result-object v3

    .line 216
    invoke-static {}, Lrx/a/b/a;->a()Lrx/h;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/e;->a(Lrx/h;)Lrx/e;

    move-result-object v3

    new-instance v4, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$2;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v3, v4}, Lrx/e;->b(Lrx/l;)Lrx/m;

    move-result-object v3

    .line 210
    invoke-virtual {v2, v3}, Lrx/i/b;->a(Lrx/m;)V

    goto :goto_0
.end method


# virtual methods
.method public onBack()V
    .locals 1
    .annotation build Lbutterknife/OnClick;
        a = {
            0x7f090096
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->d()V

    .line 197
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/jiliguala/niuwa/common/base/b;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->handleIntent()V

    .line 71
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mServerLv:Ljava/lang/String;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->getLevelInfo(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mLevelInfo:Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    .line 72
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->reportAmplitude()V

    .line 73
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->processData()V

    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 116
    const v0, 0x7f0b00b7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRootView:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRootView:Landroid/view/View;

    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->a(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 120
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->setAdapter()V

    .line 122
    invoke-direct {p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->setBg()V

    .line 124
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;

    invoke-direct {v1, p0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment$1;-><init>(Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 132
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/jiliguala/niuwa/common/base/b;->onDestroy()V

    .line 292
    return-void
.end method

.method public onItemChildClick(Lcom/c/a/a/a/c;Landroid/view/View;I)V
    .locals 4
    .param p1, "adapter"    # Lcom/c/a/a/a/c;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/c/a/a/a/c;->getData()Ljava/util/List;

    move-result-object v0

    .line 298
    .local v0, "data":Ljava/util/List;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/xutils/e;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;

    .line 300
    .local v1, "levelItem":Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;
    if-eqz v1, :cond_1

    const-string v2, "L4MC"

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "L4PH"

    iget-object v3, v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    :cond_2
    const-string v2, "\u656c\u8bf7\u671f\u5f85"

    invoke-static {v2}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v2, v1, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->mType:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelChoiceFragment;->switchLevel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
