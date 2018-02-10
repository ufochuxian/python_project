.class public Lcom/mob/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/a/b;


# static fields
.field public static final a:Ljava/lang/String; = "SHARESDK"

.field public static final b:I = 0xea60

.field public static final c:Ljava/lang/String; = "3.0.2"

.field public static final d:I = 0x4b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->isDebug()Z

    .line 14
    const-string v0, "SHARESDK"

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 18
    const v0, 0xeaab

    return v0
.end method
