.class final enum Lokhttp3/u$a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/u$a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID_HOST:Lokhttp3/u$a$a;

.field public static final enum INVALID_PORT:Lokhttp3/u$a$a;

.field public static final enum MISSING_SCHEME:Lokhttp3/u$a$a;

.field public static final enum SUCCESS:Lokhttp3/u$a$a;

.field public static final enum UNSUPPORTED_SCHEME:Lokhttp3/u$a$a;

.field private static final synthetic a:[Lokhttp3/u$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1270
    new-instance v0, Lokhttp3/u$a$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lokhttp3/u$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/u$a$a;->SUCCESS:Lokhttp3/u$a$a;

    .line 1271
    new-instance v0, Lokhttp3/u$a$a;

    const-string v1, "MISSING_SCHEME"

    invoke-direct {v0, v1, v3}, Lokhttp3/u$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/u$a$a;->MISSING_SCHEME:Lokhttp3/u$a$a;

    .line 1272
    new-instance v0, Lokhttp3/u$a$a;

    const-string v1, "UNSUPPORTED_SCHEME"

    invoke-direct {v0, v1, v4}, Lokhttp3/u$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/u$a$a;->UNSUPPORTED_SCHEME:Lokhttp3/u$a$a;

    .line 1273
    new-instance v0, Lokhttp3/u$a$a;

    const-string v1, "INVALID_PORT"

    invoke-direct {v0, v1, v5}, Lokhttp3/u$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/u$a$a;->INVALID_PORT:Lokhttp3/u$a$a;

    .line 1274
    new-instance v0, Lokhttp3/u$a$a;

    const-string v1, "INVALID_HOST"

    invoke-direct {v0, v1, v6}, Lokhttp3/u$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lokhttp3/u$a$a;->INVALID_HOST:Lokhttp3/u$a$a;

    .line 1269
    const/4 v0, 0x5

    new-array v0, v0, [Lokhttp3/u$a$a;

    sget-object v1, Lokhttp3/u$a$a;->SUCCESS:Lokhttp3/u$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lokhttp3/u$a$a;->MISSING_SCHEME:Lokhttp3/u$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lokhttp3/u$a$a;->UNSUPPORTED_SCHEME:Lokhttp3/u$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lokhttp3/u$a$a;->INVALID_PORT:Lokhttp3/u$a$a;

    aput-object v1, v0, v5

    sget-object v1, Lokhttp3/u$a$a;->INVALID_HOST:Lokhttp3/u$a$a;

    aput-object v1, v0, v6

    sput-object v0, Lokhttp3/u$a$a;->a:[Lokhttp3/u$a$a;

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
    .line 1269
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/u$a$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1269
    const-class v0, Lokhttp3/u$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/u$a$a;

    return-object v0
.end method

.method public static values()[Lokhttp3/u$a$a;
    .locals 1

    .prologue
    .line 1269
    sget-object v0, Lokhttp3/u$a$a;->a:[Lokhttp3/u$a$a;

    invoke-virtual {v0}, [Lokhttp3/u$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/u$a$a;

    return-object v0
.end method