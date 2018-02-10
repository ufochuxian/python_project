.class public Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/c/a/a/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/c/a/a/a/c/c;"
    }
.end annotation


# static fields
.field public static final CURREMT:I = 0x2

.field public static final DIVIDER:I = 0x4

.field public static final HEADER:I = 0x5

.field public static final NORMAL:I = 0x1


# instance fields
.field private content:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private itemType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "itemType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<TT;>;"
    .local p2, "content":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->itemType:I

    .line 25
    iput-object p2, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->content:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<TT;>;"
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;, "Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem<TT;>;"
    iget v0, p0, Lcom/jiliguala/niuwa/module/NewRoadMap/MultipleItem;->itemType:I

    return v0
.end method
