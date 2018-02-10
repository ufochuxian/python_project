.class final enum Landroid/support/constraint/solver/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/constraint/solver/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/support/constraint/solver/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EQUALS:Landroid/support/constraint/solver/h$a;

.field public static final enum GREATER_THAN:Landroid/support/constraint/solver/h$a;

.field public static final enum LOWER_THAN:Landroid/support/constraint/solver/h$a;

.field private static final synthetic a:[Landroid/support/constraint/solver/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Landroid/support/constraint/solver/h$a;

    const-string v1, "EQUALS"

    invoke-direct {v0, v1, v2}, Landroid/support/constraint/solver/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/h$a;->EQUALS:Landroid/support/constraint/solver/h$a;

    new-instance v0, Landroid/support/constraint/solver/h$a;

    const-string v1, "LOWER_THAN"

    invoke-direct {v0, v1, v3}, Landroid/support/constraint/solver/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/h$a;->LOWER_THAN:Landroid/support/constraint/solver/h$a;

    new-instance v0, Landroid/support/constraint/solver/h$a;

    const-string v1, "GREATER_THAN"

    invoke-direct {v0, v1, v4}, Landroid/support/constraint/solver/h$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/constraint/solver/h$a;->GREATER_THAN:Landroid/support/constraint/solver/h$a;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/constraint/solver/h$a;

    sget-object v1, Landroid/support/constraint/solver/h$a;->EQUALS:Landroid/support/constraint/solver/h$a;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/constraint/solver/h$a;->LOWER_THAN:Landroid/support/constraint/solver/h$a;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/constraint/solver/h$a;->GREATER_THAN:Landroid/support/constraint/solver/h$a;

    aput-object v1, v0, v4

    sput-object v0, Landroid/support/constraint/solver/h$a;->a:[Landroid/support/constraint/solver/h$a;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/constraint/solver/h$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    const-class v0, Landroid/support/constraint/solver/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/solver/h$a;

    return-object v0
.end method

.method public static values()[Landroid/support/constraint/solver/h$a;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/support/constraint/solver/h$a;->a:[Landroid/support/constraint/solver/h$a;

    invoke-virtual {v0}, [Landroid/support/constraint/solver/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/constraint/solver/h$a;

    return-object v0
.end method
