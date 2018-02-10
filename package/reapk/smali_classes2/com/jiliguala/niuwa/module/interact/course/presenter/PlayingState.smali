.class public final enum Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

.field public static final enum ENDING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

.field public static final enum INTERACT_RESULT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

.field public static final enum OPENING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

.field public static final enum TRANSITION:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

.field public static final enum VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    const-string v1, "OPENING"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->OPENING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 9
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    const-string v1, "VIDEO_INTERACT"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 10
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    const-string v1, "INTERACT_RESULT"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->INTERACT_RESULT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 11
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    const-string v1, "TRANSITION"

    invoke-direct {v0, v1, v5}, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->TRANSITION:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 12
    new-instance v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    const-string v1, "ENDING"

    invoke-direct {v0, v1, v6}, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->ENDING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    .line 7
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->OPENING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->VIDEO_INTERACT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->INTERACT_RESULT:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->TRANSITION:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->ENDING:Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->$VALUES:[Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->$VALUES:[Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/interact/course/presenter/PlayingState;

    return-object v0
.end method
