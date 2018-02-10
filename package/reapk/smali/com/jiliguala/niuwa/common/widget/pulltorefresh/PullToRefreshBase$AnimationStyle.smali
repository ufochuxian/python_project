.class public final enum Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum FLIP:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field public static final enum ROTATE:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1258
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1264
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    const-string v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1253
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static getDefault()Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1267
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method static mapIntToValue(I)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "modeInt"    # I

    .prologue
    .line 1279
    packed-switch p0, :pswitch_data_0

    .line 1282
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ROTATE:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 1284
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->FLIP:Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    goto :goto_0

    .line 1279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1253
    const-class v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    .locals 1

    .prologue
    .line 1253
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    return-object v0
.end method


# virtual methods
.method createLoadingLayout(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/LoadingLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1289
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$4;->d:[I

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1292
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 1294
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/jiliguala/niuwa/common/widget/pulltorefresh/internal/FlipLoadingLayout;-><init>(Landroid/content/Context;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/jiliguala/niuwa/common/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1289
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
