.class final Lcom/google/firebase/database/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbZp:Lcom/google/firebase/database/Query;

.field private synthetic zzbZq:Lcom/google/android/gms/internal/qf;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/qf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzq;->zzbZp:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/zzq;->zzbZq:Lcom/google/android/gms/internal/qf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/zzq;->zzbZp:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->zzbYW:Lcom/google/android/gms/internal/qr;

    iget-object v1, p0, Lcom/google/firebase/database/zzq;->zzbZq:Lcom/google/android/gms/internal/qf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/qr;->zze(Lcom/google/android/gms/internal/qf;)V

    return-void
.end method
