.class final enum Lcn/sharesdk/framework/f$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/framework/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/sharesdk/framework/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/sharesdk/framework/f$a;

.field public static final enum b:Lcn/sharesdk/framework/f$a;

.field public static final enum c:Lcn/sharesdk/framework/f$a;

.field private static final synthetic d:[Lcn/sharesdk/framework/f$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    new-instance v0, Lcn/sharesdk/framework/f$a;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcn/sharesdk/framework/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    .line 601
    new-instance v0, Lcn/sharesdk/framework/f$a;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcn/sharesdk/framework/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/f$a;->b:Lcn/sharesdk/framework/f$a;

    .line 602
    new-instance v0, Lcn/sharesdk/framework/f$a;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4}, Lcn/sharesdk/framework/f$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    .line 599
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/sharesdk/framework/f$a;

    sget-object v1, Lcn/sharesdk/framework/f$a;->a:Lcn/sharesdk/framework/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lcn/sharesdk/framework/f$a;->b:Lcn/sharesdk/framework/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcn/sharesdk/framework/f$a;->c:Lcn/sharesdk/framework/f$a;

    aput-object v1, v0, v4

    sput-object v0, Lcn/sharesdk/framework/f$a;->d:[Lcn/sharesdk/framework/f$a;

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
    .line 599
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/sharesdk/framework/f$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 599
    const-class v0, Lcn/sharesdk/framework/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/f$a;

    return-object v0
.end method

.method public static values()[Lcn/sharesdk/framework/f$a;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcn/sharesdk/framework/f$a;->d:[Lcn/sharesdk/framework/f$a;

    invoke-virtual {v0}, [Lcn/sharesdk/framework/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/sharesdk/framework/f$a;

    return-object v0
.end method
