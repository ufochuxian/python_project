.class public interface abstract Lcom/jiliguala/niuwa/module/search/SearchView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/base/e;


# virtual methods
.method public abstract getLstSearchResult()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/jiliguala/niuwa/logic/network/json/AbstractResData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSearchFirstPos()I
.end method

.method public abstract getSearchKeyWord()Ljava/lang/String;
.end method
