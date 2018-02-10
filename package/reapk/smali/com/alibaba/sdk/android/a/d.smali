.class public final enum Lcom/alibaba/sdk/android/a/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/alibaba/sdk/android/a/d;

.field public static final enum b:Lcom/alibaba/sdk/android/a/d;

.field private static final synthetic d:[Lcom/alibaba/sdk/android/a/d;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alibaba/sdk/android/a/d;

    const-string v1, "AMS_EXTINFO_KEY_VERSION"

    const-string v2, "SdkVersion"

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/a/d;->a:Lcom/alibaba/sdk/android/a/d;

    new-instance v0, Lcom/alibaba/sdk/android/a/d;

    const-string v1, "AMS_EXTINFO_KEY_PACKAGE"

    const-string v2, "PackageName"

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/sdk/android/a/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/a/d;->b:Lcom/alibaba/sdk/android/a/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/sdk/android/a/d;

    sget-object v1, Lcom/alibaba/sdk/android/a/d;->a:Lcom/alibaba/sdk/android/a/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/a/d;->b:Lcom/alibaba/sdk/android/a/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sdk/android/a/d;->d:[Lcom/alibaba/sdk/android/a/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alibaba/sdk/android/a/d;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/a/d;->c:Ljava/lang/String;

    return-object v0
.end method
