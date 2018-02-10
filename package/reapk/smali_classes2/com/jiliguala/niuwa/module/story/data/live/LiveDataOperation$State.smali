.class public final enum Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

.field public static final enum EXPIRED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

.field public static final enum FAILED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

.field public static final enum LOADING:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

.field public static final enum NOT_STARTED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

.field public static final enum SUCCESS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->NOT_STARTED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    .line 184
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->LOADING:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    .line 191
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->SUCCESS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    .line 198
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->FAILED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    .line 204
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v6}, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->EXPIRED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    .line 174
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->NOT_STARTED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->LOADING:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->SUCCESS:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->FAILED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->EXPIRED:Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

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
    .line 174
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/story/data/live/LiveDataOperation$State;

    return-object v0
.end method
