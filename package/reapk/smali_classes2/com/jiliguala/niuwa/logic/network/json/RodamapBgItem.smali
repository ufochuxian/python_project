.class public Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/c/c;
.implements Ljava/io/Serializable;


# static fields
.field public static final item:I


# instance fields
.field public bg:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "bg"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/jiliguala/niuwa/logic/network/json/RodamapBgItem;->bg:I

    .line 20
    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
