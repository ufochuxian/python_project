.class final enum Ljavax/jmdns/impl/constants/DNSState$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/constants/DNSState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/jmdns/impl/constants/DNSState$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum announced:Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum announcing:Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum canceled:Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum canceling:Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum closed:Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum closing:Ljavax/jmdns/impl/constants/DNSState$a;

.field public static final enum probing:Ljavax/jmdns/impl/constants/DNSState$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "probing"

    invoke-direct {v0, v1, v3}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->probing:Ljavax/jmdns/impl/constants/DNSState$a;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "announcing"

    invoke-direct {v0, v1, v4}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->announcing:Ljavax/jmdns/impl/constants/DNSState$a;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "announced"

    invoke-direct {v0, v1, v5}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->announced:Ljavax/jmdns/impl/constants/DNSState$a;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "canceling"

    invoke-direct {v0, v1, v6}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->canceling:Ljavax/jmdns/impl/constants/DNSState$a;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "canceled"

    invoke-direct {v0, v1, v7}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->canceled:Ljavax/jmdns/impl/constants/DNSState$a;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "closing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->closing:Ljavax/jmdns/impl/constants/DNSState$a;

    new-instance v0, Ljavax/jmdns/impl/constants/DNSState$a;

    const-string v1, "closed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljavax/jmdns/impl/constants/DNSState$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->closed:Ljavax/jmdns/impl/constants/DNSState$a;

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Ljavax/jmdns/impl/constants/DNSState$a;

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$a;->probing:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$a;->announcing:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$a;->announced:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$a;->canceling:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/jmdns/impl/constants/DNSState$a;->canceled:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState$a;->closing:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/jmdns/impl/constants/DNSState$a;->closed:Ljavax/jmdns/impl/constants/DNSState$a;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->a:[Ljavax/jmdns/impl/constants/DNSState$a;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/jmdns/impl/constants/DNSState$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Ljavax/jmdns/impl/constants/DNSState$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/constants/DNSState$a;

    return-object v0
.end method

.method public static values()[Ljavax/jmdns/impl/constants/DNSState$a;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState$a;->a:[Ljavax/jmdns/impl/constants/DNSState$a;

    invoke-virtual {v0}, [Ljavax/jmdns/impl/constants/DNSState$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/jmdns/impl/constants/DNSState$a;

    return-object v0
.end method
