.class public final enum Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/widget/customview/SuperView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

.field public static final enum EMPTY:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

.field public static final enum ERROR:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

.field public static final enum LOADING:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 208
    new-instance v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->LOADING:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->EMPTY:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    new-instance v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->ERROR:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->LOADING:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->EMPTY:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->ERROR:Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

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
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 207
    const-class v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->$VALUES:[Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/common/widget/customview/SuperView$State;

    return-object v0
.end method
