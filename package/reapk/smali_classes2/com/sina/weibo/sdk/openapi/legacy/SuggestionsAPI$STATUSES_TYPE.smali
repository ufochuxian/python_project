.class public final enum Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATUSES_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BEAUTY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum CARS:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum CATE:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum CONSTELLATION:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum ENTERTAINMENT:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field private static final synthetic ENUM$VALUES:[Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum FASHION:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum FUNNY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum LOVELY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum MUSIC:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

.field public static final enum VIDEO:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "ENTERTAINMENT"

    invoke-direct {v0, v1, v3}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->ENTERTAINMENT:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "FUNNY"

    invoke-direct {v0, v1, v4}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->FUNNY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "BEAUTY"

    invoke-direct {v0, v1, v5}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->BEAUTY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->VIDEO:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "CONSTELLATION"

    invoke-direct {v0, v1, v7}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->CONSTELLATION:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "LOVELY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->LOVELY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "FASHION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->FASHION:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "CARS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->CARS:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "CATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->CATE:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    new-instance v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    const-string v1, "MUSIC"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->MUSIC:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    sget-object v1, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->ENTERTAINMENT:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->FUNNY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->BEAUTY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->VIDEO:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->CONSTELLATION:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->LOVELY:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->FASHION:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->CARS:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->CATE:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->MUSIC:Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->ENUM$VALUES:[Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;->ENUM$VALUES:[Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    array-length v1, v0

    new-array v2, v1, [Lcom/sina/weibo/sdk/openapi/legacy/SuggestionsAPI$STATUSES_TYPE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
