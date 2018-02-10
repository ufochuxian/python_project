.class public final enum Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageLayoutKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

.field public static final enum COMBINED:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

.field public static final enum LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

.field public static final enum RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 562
    new-instance v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .line 567
    new-instance v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .line 573
    new-instance v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    const-string v1, "COMBINED"

    invoke-direct {v0, v1, v4}, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->COMBINED:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    .line 558
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->LEFT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->RIGHT:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->COMBINED:Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->$VALUES:[Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

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
    .line 558
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 558
    const-class v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;
    .locals 1

    .prologue
    .line 558
    sget-object v0, Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->$VALUES:[Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/story/fragments/PagingFragment$PageLayoutKind;

    return-object v0
.end method
