.class final enum Lorg/jsoup/b/h$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jsoup/b/h$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Character:Lorg/jsoup/b/h$h;

.field public static final enum Comment:Lorg/jsoup/b/h$h;

.field public static final enum Doctype:Lorg/jsoup/b/h$h;

.field public static final enum EOF:Lorg/jsoup/b/h$h;

.field public static final enum EndTag:Lorg/jsoup/b/h$h;

.field public static final enum StartTag:Lorg/jsoup/b/h$h;

.field private static final synthetic a:[Lorg/jsoup/b/h$h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    new-instance v0, Lorg/jsoup/b/h$h;

    const-string v1, "Doctype"

    invoke-direct {v0, v1, v3}, Lorg/jsoup/b/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/h$h;->Doctype:Lorg/jsoup/b/h$h;

    .line 269
    new-instance v0, Lorg/jsoup/b/h$h;

    const-string v1, "StartTag"

    invoke-direct {v0, v1, v4}, Lorg/jsoup/b/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/h$h;->StartTag:Lorg/jsoup/b/h$h;

    .line 270
    new-instance v0, Lorg/jsoup/b/h$h;

    const-string v1, "EndTag"

    invoke-direct {v0, v1, v5}, Lorg/jsoup/b/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/h$h;->EndTag:Lorg/jsoup/b/h$h;

    .line 271
    new-instance v0, Lorg/jsoup/b/h$h;

    const-string v1, "Comment"

    invoke-direct {v0, v1, v6}, Lorg/jsoup/b/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/h$h;->Comment:Lorg/jsoup/b/h$h;

    .line 272
    new-instance v0, Lorg/jsoup/b/h$h;

    const-string v1, "Character"

    invoke-direct {v0, v1, v7}, Lorg/jsoup/b/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/h$h;->Character:Lorg/jsoup/b/h$h;

    .line 273
    new-instance v0, Lorg/jsoup/b/h$h;

    const-string v1, "EOF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/b/h$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/b/h$h;->EOF:Lorg/jsoup/b/h$h;

    .line 267
    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jsoup/b/h$h;

    sget-object v1, Lorg/jsoup/b/h$h;->Doctype:Lorg/jsoup/b/h$h;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jsoup/b/h$h;->StartTag:Lorg/jsoup/b/h$h;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jsoup/b/h$h;->EndTag:Lorg/jsoup/b/h$h;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jsoup/b/h$h;->Comment:Lorg/jsoup/b/h$h;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jsoup/b/h$h;->Character:Lorg/jsoup/b/h$h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jsoup/b/h$h;->EOF:Lorg/jsoup/b/h$h;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jsoup/b/h$h;->a:[Lorg/jsoup/b/h$h;

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
    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/b/h$h;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 267
    const-class v0, Lorg/jsoup/b/h$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jsoup/b/h$h;

    return-object v0
.end method

.method public static values()[Lorg/jsoup/b/h$h;
    .locals 1

    .prologue
    .line 267
    sget-object v0, Lorg/jsoup/b/h$h;->a:[Lorg/jsoup/b/h$h;

    invoke-virtual {v0}, [Lorg/jsoup/b/h$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/b/h$h;

    return-object v0
.end method
