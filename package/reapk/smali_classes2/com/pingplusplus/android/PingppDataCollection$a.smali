.class public final enum Lcom/pingplusplus/android/PingppDataCollection$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pingplusplus/android/PingppDataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pingplusplus/android/PingppDataCollection$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/pingplusplus/android/PingppDataCollection$a;

.field public static final enum b:Lcom/pingplusplus/android/PingppDataCollection$a;

.field private static final synthetic d:[Lcom/pingplusplus/android/PingppDataCollection$a;


# instance fields
.field public c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/pingplusplus/android/PingppDataCollection$a;

    const-string v1, "SDK"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/pingplusplus/android/PingppDataCollection$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/pingplusplus/android/PingppDataCollection$a;->a:Lcom/pingplusplus/android/PingppDataCollection$a;

    new-instance v0, Lcom/pingplusplus/android/PingppDataCollection$a;

    const-string v1, "ONE"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/pingplusplus/android/PingppDataCollection$a;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/pingplusplus/android/PingppDataCollection$a;->b:Lcom/pingplusplus/android/PingppDataCollection$a;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pingplusplus/android/PingppDataCollection$a;

    sget-object v1, Lcom/pingplusplus/android/PingppDataCollection$a;->a:Lcom/pingplusplus/android/PingppDataCollection$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pingplusplus/android/PingppDataCollection$a;->b:Lcom/pingplusplus/android/PingppDataCollection$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/pingplusplus/android/PingppDataCollection$a;->d:[Lcom/pingplusplus/android/PingppDataCollection$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/pingplusplus/android/PingppDataCollection$a;->c:Ljava/lang/Integer;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pingplusplus/android/PingppDataCollection$a;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/pingplusplus/android/PingppDataCollection$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pingplusplus/android/PingppDataCollection$a;

    return-object v0
.end method

.method public static values()[Lcom/pingplusplus/android/PingppDataCollection$a;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/pingplusplus/android/PingppDataCollection$a;->d:[Lcom/pingplusplus/android/PingppDataCollection$a;

    invoke-virtual {v0}, [Lcom/pingplusplus/android/PingppDataCollection$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pingplusplus/android/PingppDataCollection$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pingplusplus/android/PingppDataCollection$a;->c:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
