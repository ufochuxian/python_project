.class public final enum Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/RetrofitException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

.field public static final enum HTTP:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

.field public static final enum NETWORK:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

.field public static final enum UNEXPECTED:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->NETWORK:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    .line 96
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->HTTP:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    .line 101
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    const-string v1, "UNEXPECTED"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->UNEXPECTED:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    sget-object v1, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->NETWORK:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->HTTP:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->UNEXPECTED:Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->$VALUES:[Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    const-class v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->$VALUES:[Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/logic/network/RetrofitException$Kind;

    return-object v0
.end method