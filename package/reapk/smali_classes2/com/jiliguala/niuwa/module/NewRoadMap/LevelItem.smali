.class public Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;
    }
.end annotation


# static fields
.field public static final B1:Ljava/lang/String; = "B1"

.field public static final B1_MC:Ljava/lang/String; = "B1MC"

.field public static final B2:Ljava/lang/String; = "B2"

.field public static final B2_MC:Ljava/lang/String; = "B2MC"

.field public static final L1_MC:Ljava/lang/String; = "L1MC"

.field public static final L1_PH:Ljava/lang/String; = "L1PH"

.field public static final L2_MC:Ljava/lang/String; = "L2MC"

.field public static final L2_PH:Ljava/lang/String; = "L2PH"

.field public static final L3_MC:Ljava/lang/String; = "L3MC"

.field public static final L3_PH:Ljava/lang/String; = "L3PH"

.field public static final L4_MC:Ljava/lang/String; = "L4MC"

.field public static final L4_PH:Ljava/lang/String; = "L4PH"

.field public static final LV1:Ljava/lang/String; = "Lv1"

.field public static final LV2:Ljava/lang/String; = "Lv2"

.field public static final LV3:Ljava/lang/String; = "Lv3"

.field public static final LV4:Ljava/lang/String; = "Lv4"

.field public static final Level1:Ljava/lang/String; = "Level 1"

.field public static final Level2:Ljava/lang/String; = "Level 2"

.field public static final Level3:Ljava/lang/String; = "Level 3"

.field public static final Level4:Ljava/lang/String; = "Level 4"

.field public static final MC:Ljava/lang/String; = "MC"

.field public static final PH:Ljava/lang/String; = "PH"


# instance fields
.field public currentPos:I

.field public mLV:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "currentPos"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->type:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->currentPos:I

    .line 54
    return-void
.end method

.method public static getLevelInfo(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;
    .locals 3
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;-><init>()V

    .line 125
    .local v0, "levelInfo":Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 167
    const-string v1, "Level 1"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 168
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 125
    :sswitch_0
    const-string v2, "L1MC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v2, "L2MC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v2, "L3MC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "L4MC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string v2, "B1MC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_5
    const-string v2, "B2MC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "L1PH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v2, "L2PH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_8
    const-string v2, "L3PH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_9
    const-string v2, "L4PH"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    .line 127
    :pswitch_0
    const-string v1, "Level 1"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 128
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 131
    :pswitch_1
    const-string v1, "Level 2"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 132
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 135
    :pswitch_2
    const-string v1, "Level 3"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 136
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 139
    :pswitch_3
    const-string v1, "Level 4"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 140
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    :pswitch_4
    const-string v1, "B1"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 144
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :pswitch_5
    const-string v1, "B2"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 148
    const-string v1, "MC"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    :pswitch_6
    const-string v1, "Level 1"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 152
    const-string v1, "PH"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 155
    :pswitch_7
    const-string v1, "Level 2"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 156
    const-string v1, "PH"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 159
    :pswitch_8
    const-string v1, "Level 3"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 160
    const-string v1, "PH"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 163
    :pswitch_9
    const-string v1, "Level 4"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->lv:Ljava/lang/String;

    .line 164
    const-string v1, "PH"

    iput-object v1, v0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem$LevelInfo;->type:Ljava/lang/String;

    goto/16 :goto_0

    .line 125
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ec205 -> :sswitch_4
        0x1ec5c6 -> :sswitch_5
        0x234dbb -> :sswitch_0
        0x234e1d -> :sswitch_6
        0x23517c -> :sswitch_1
        0x2351de -> :sswitch_7
        0x23553d -> :sswitch_2
        0x23559f -> :sswitch_8
        0x2358fe -> :sswitch_3
        0x235960 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static isAgeOverTwoMC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "L1MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L2MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L3MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isB1MC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "B1MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isB2MC(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 107
    const-string v0, "B2MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMc(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, "MC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNewRoadMap(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "L1MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L2MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L3MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L4MC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L1PH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L2PH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L3PH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "L4PH"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPH(Ljava/lang/String;)Z
    .locals 1
    .param p0, "lv"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "PH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDrawable()I
    .locals 4

    .prologue
    const v0, 0x7f080155

    .line 67
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->type:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_1
    :pswitch_0
    return v0

    .line 67
    :sswitch_0
    const-string v3, "B1MC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "B2MC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "L1MC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "L2MC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "L3MC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "L4MC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "L1PH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "L2PH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "L3PH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "L4PH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    .line 69
    :pswitch_1
    const v0, 0x7f080161

    goto :goto_1

    .line 71
    :pswitch_2
    const v0, 0x7f080162

    goto :goto_1

    .line 75
    :pswitch_3
    const v0, 0x7f080156

    goto :goto_1

    .line 77
    :pswitch_4
    const v0, 0x7f080157

    goto :goto_1

    .line 79
    :pswitch_5
    const v0, 0x7f080159

    goto :goto_1

    .line 81
    :pswitch_6
    const v0, 0x7f08015c

    goto :goto_1

    .line 83
    :pswitch_7
    const v0, 0x7f08015d

    goto/16 :goto_1

    .line 85
    :pswitch_8
    const v0, 0x7f08015e

    goto/16 :goto_1

    .line 87
    :pswitch_9
    const v0, 0x7f08015f

    goto/16 :goto_1

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x1ec205 -> :sswitch_0
        0x1ec5c6 -> :sswitch_1
        0x234dbb -> :sswitch_2
        0x234e1d -> :sswitch_6
        0x23517c -> :sswitch_3
        0x2351de -> :sswitch_7
        0x23553d -> :sswitch_4
        0x23559f -> :sswitch_8
        0x2358fe -> :sswitch_5
        0x235960 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isCurrent(I)Z
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->currentPos:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLV(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;
    .locals 0
    .param p1, "lv"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/LevelItem;->mLV:Ljava/lang/String;

    .line 63
    return-object p0
.end method
