.class Lcom/google/android/gms/internal/zzbvk$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbvp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbvk;->zzc(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbvp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbvp",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzcpQ:Lcom/google/android/gms/internal/zzbvk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbvk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvk$9;->zzcpQ:Lcom/google/android/gms/internal/zzbvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzady()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
