.class final enum Lar/com/hjg/pngj/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar/com/hjg/pngj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lar/com/hjg/pngj/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ROW_READY:Lar/com/hjg/pngj/g$a;

.field public static final enum TERMINATED:Lar/com/hjg/pngj/g$a;

.field public static final enum WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

.field public static final enum WORK_DONE:Lar/com/hjg/pngj/g$a;

.field private static final synthetic a:[Lar/com/hjg/pngj/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lar/com/hjg/pngj/g$a;

    const-string v1, "WAITING_FOR_INPUT"

    invoke-direct {v0, v1, v2}, Lar/com/hjg/pngj/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    .line 49
    new-instance v0, Lar/com/hjg/pngj/g$a;

    const-string v1, "ROW_READY"

    invoke-direct {v0, v1, v3}, Lar/com/hjg/pngj/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    .line 51
    new-instance v0, Lar/com/hjg/pngj/g$a;

    const-string v1, "WORK_DONE"

    invoke-direct {v0, v1, v4}, Lar/com/hjg/pngj/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/g$a;->WORK_DONE:Lar/com/hjg/pngj/g$a;

    .line 53
    new-instance v0, Lar/com/hjg/pngj/g$a;

    const-string v1, "TERMINATED"

    invoke-direct {v0, v1, v5}, Lar/com/hjg/pngj/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lar/com/hjg/pngj/g$a;->TERMINATED:Lar/com/hjg/pngj/g$a;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Lar/com/hjg/pngj/g$a;

    sget-object v1, Lar/com/hjg/pngj/g$a;->WAITING_FOR_INPUT:Lar/com/hjg/pngj/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lar/com/hjg/pngj/g$a;->ROW_READY:Lar/com/hjg/pngj/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lar/com/hjg/pngj/g$a;->WORK_DONE:Lar/com/hjg/pngj/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lar/com/hjg/pngj/g$a;->TERMINATED:Lar/com/hjg/pngj/g$a;

    aput-object v1, v0, v5

    sput-object v0, Lar/com/hjg/pngj/g$a;->a:[Lar/com/hjg/pngj/g$a;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lar/com/hjg/pngj/g$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lar/com/hjg/pngj/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lar/com/hjg/pngj/g$a;

    return-object v0
.end method

.method public static values()[Lar/com/hjg/pngj/g$a;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lar/com/hjg/pngj/g$a;->a:[Lar/com/hjg/pngj/g$a;

    invoke-virtual {v0}, [Lar/com/hjg/pngj/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lar/com/hjg/pngj/g$a;

    return-object v0
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lar/com/hjg/pngj/g$a;->WORK_DONE:Lar/com/hjg/pngj/g$a;

    if-eq p0, v0, :cond_0

    sget-object v0, Lar/com/hjg/pngj/g$a;->TERMINATED:Lar/com/hjg/pngj/g$a;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lar/com/hjg/pngj/g$a;->TERMINATED:Lar/com/hjg/pngj/g$a;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
