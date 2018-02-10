.class public final enum Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/story/data/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;",
        ">;",
        "Lcom/jiliguala/niuwa/module/story/data/Analytics$Propertyable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

.field public static final enum APP:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

.field public static final enum BOOK:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    const-string v1, "APP"

    invoke-direct {v0, v1, v2}, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->APP:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    .line 216
    new-instance v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    const-string v1, "BOOK"

    invoke-direct {v0, v1, v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->BOOK:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    .line 211
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->APP:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->BOOK:Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

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
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    return-object v0
.end method

.method public static values()[Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->$VALUES:[Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    invoke-virtual {v0}, [Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;

    return-object v0
.end method


# virtual methods
.method public toPropertyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/Analytics$ShareType;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
